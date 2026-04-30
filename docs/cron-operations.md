# Cron Operations — 등록 · 정지 · 디버그

> 본 문서는 *운영* 가이드. 자동화 *진입* 은 Iron Law 게이트(my-life `AGENTS.md`) 통과 후에만.

---

## 1. 게이트 (등록 전 필수)

- [ ] `seed.md` 의 inception keyword 채움 + `sealed: true`
- [ ] `current.md` 의 `gen: 1` + `last_updated` 작성
- [ ] `workflows/vertical-slice.md` 1 회 손통과
- [ ] `my-life/logs/manual-runs/wf-vertical-slice-<date>.md` 회고 작성
- [ ] `state/slack-config.yml` 작성 (.example 복사 후)
- [ ] `state/budget.yml` 작성 (.example 복사 후, 한도 본인 plan 에 맞게 조정)

위 6 개 모두 통과 → 등록 가능.

---

## 2. 등록

```bash
cd /home/choigawoon/k-codepoet/my-prompts

# 어떤 라인이 추가되는지 확인
scripts/cron-diff.sh

# 백업 + 추가
crontab -l > /tmp/cron.bak
crontab -l > /tmp/cron.new
cat BOOTSTRAP.cron.example >> /tmp/cron.new

# 확인 후 적용
diff /tmp/cron.bak /tmp/cron.new
crontab /tmp/cron.new

# 검증
crontab -l | tail -20
```

첫 등록 후 10 분 안에 `logs/cron.log` 에 첫 tick 로그가 보여야 정상.

---

## 3. 정지 (3 단계 — 강도순)

### Soft pause (cron 은 살아있고, ticks 만 즉시 종료)
```bash
scripts/system-toggle.sh off "사유 한 줄"
```
- `current.md.paused = true`
- 모든 tick 이 sanity check 에서 즉시 종료
- Slack 알림 발송
- 다시 켜기: `scripts/system-toggle.sh on`

### Hard pause (cron 자체 제거)
```bash
crontab -l | grep -v 'my-prompts' | crontab -
```
- 본 시스템 관련 라인만 제거. 다른 cron(market, trending 등)은 영향 없음.
- 재등록: 위 §2 반복.

### Emergency (전체 시스템)
```bash
crontab -r   # ⚠️ 모든 cron 삭제. 다른 cron 까지 다 날아감. 보통 쓰지 마라.
```

---

## 4. 디버그

### 로그 위치
| 파일 | 내용 |
|------|------|
| `logs/cron.log` | tick.sh 의 모든 호출 (sanity 결과 · 호출 · summary · 에러) |
| `logs/budget.log` | usage-budget.sh check 결과 |
| `generations/gen-N/cycles/cy-NNN/ticks/tick-NNN.md` | 각 tick 의 *내용물* (claude 가 작성) |

### 자주 보는 결과

| 로그 라인 | 의미 |
|-----------|------|
| `blocked:paused` | `current.md.paused = true` |
| `blocked:seed_unsealed` | `seed.md.sealed = false` |
| `blocked:queue_full(N>=5)` | `decisions/open/` 가 임계 — 사람 응답 대기 |
| `blocked:no_active_gen` | `current.md.gen = null` |
| `blocked:budget_paused` | usage-budget 가 시스템을 정지 |
| `done — TICK_SUMMARY: ...` | 정상 1 회 완료 |
| `ERROR — see ...` | claude -p 가 실패. tail 20 줄이 cron.log 에 들어감 |

### 수동 1 회 실행
```bash
# checker
scripts/tick.sh --mode checker

# 특정 역할
scripts/tick.sh --mode role --role loremaster

# rotate
scripts/tick.sh --mode role-rotate
```

### Slack 트리거 테스트
```bash
scripts/slack-notify.sh adhoc "테스트" "본문 *한 줄*"
```

---

## 5. 사용량 모니터링

```bash
# 현재 사용률
scripts/usage-budget.sh status

# 강제 리셋 (디버그)
scripts/usage-budget.sh reset session
scripts/usage-budget.sh reset weekly
```

### plan-level 수치는 못 가져옴

`claude` CLI 가 plan-level 사용량(43% / 46%) 을 노출하지 않으므로 본 시스템은
*자체 cron 호출이 발생시킨 비용* 만 추적한다. 사용자 인터랙티브 사용량(VSCode 안의 claude 등)은 별도.

운용 권고:
- 본 시스템 budget 한도는 *plan 한도의 일부* 만 할당 (예: 주간 plan 한도의 30%).
- `state/budget.yml.limits` 를 plan 변경 시 같이 조정.

---

## 6. 충돌 회피 — 다른 cron 들과

기존 crontab 에 이미 self-evolving 시스템들이 있다 (`my-market`, `my-trending`, `my-research`, `oh-my-msw`, `my-life`).
`scripts/cron-diff.sh` 가 충돌 후보를 보여주지만, 다음을 추가 점검:

- **시간대 분산**: my-prompts 는 매 10 분이라 다른 시스템과 자주 부딪힘.
  → claude API 동시 호출은 plan-level 한도 안에서는 OK 지만, 본 시스템 budget 은 별도 추적이라 다른 시스템과 합산 안 됨. 사용자가 둘 합쳐서 plan 한도 안에 들도록 두 budget 을 잘 잡아야 함.
- **로그 디렉토리 분리**: 본 시스템은 `logs/cron.log` 로만 씀. 다른 시스템 로그와 안 섞임.
- **Cinder PAUSE 패턴**: `my-games/cinder` 가 충돌 후 PAUSE 한 선례 있음. 본 시스템도 충돌 발생 시 같은 패턴(`scripts/system-toggle.sh off` + `docs/cron-paused-<date>.md` 에 사유 + 복구 절차) 따른다.

---

## 7. 일상 사용 — 사람 입장

**평소**: Slack 알림만 본다.
- 🟢 사이클 완료 → 그냥 읽기만
- 🟡 결정 필요 → `decisions/open/D-*.yml` 열어서 응답 (`response.picked: a/b/...`, `response.notes: "..."`, `response.decided_at: <iso>`) → `mv decisions/open/D-*.yml decisions/closed/`
- 🟣 gen 전환 → `transition.md` 열어 검토 → 같은 방식으로 응답

**왜 그렇게 결정됐나** 궁금할 때:
- `decisions/closed/D-*.yml` 의 `trace:` 따라 → `decision-traces/D-*.md` 에 발의 → 라운드별 발언 → 사용자 응답까지 기록.

**일주일에 한 번**:
- `scripts/usage-budget.sh status` 로 사용률 확인
- `generations/gen-N/review.md` 로 진척 확인
