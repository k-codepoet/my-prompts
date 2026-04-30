# Slack Triggers

`scripts/slack-notify.sh <trigger-id> <title> [body]` 로 호출되는 트리거 목록과 의미.
on/off 는 `state/slack-config.yml` 의 `triggers.<id>` 에서 조정.

| Trigger ID | 발생 시점 | 기본 | 메시지 의도 |
|------------|-----------|------|-------------|
| `decision_opened` | 새 `D-*.yml` 이 `decisions/open/` 에 생성 | on | 사람이 *응답해야* 한다 |
| `decision_overdue` | `D-*.yml.deadline` 초과 | on | 응답 지연 알림 |
| `invariant_breach` | constitution invariant 위반 감지 | on | 시스템이 자기 모순 — 즉시 검토 |
| `cycle_complete` | 사이클 마감, `review.md` 작성 | on | 진척 요약 (사람은 보기만 해도 됨) |
| `gen_transition` | `transition.md` 발의 (Type C) | on | 다음 gen 의 조직·룰 변경안 — 사람 응답 필요 |
| `convergence` | `G-CONVERGE-1` 충족 | on | 시스템 정지 + 축하 |
| `budget_warn` | 사용량 70% 도달 | on | 임계 가까움 (1h 쿨다운) |
| `budget_pause` | 사용량 90% 도달 → 자동 OFF | on | 시스템이 자기를 정지함 |
| `system_toggle` | `system-toggle.sh on/off` 호출 | on | 사람 또는 자동 정지 통지 |
| `tick_failure` | `tick.sh` 호출이 비정상 종료 | **off** | 디버그용. 켜면 cron 실패마다 알림 |
| `adhoc` | 위에 없는 임의 호출 | (always) | 스크립트가 직접 호출하는 ad-hoc |

## 메시지 형식

- **Title**: prefix + 한 줄 요약. 예: `[my-prompts] 🟡 Decision needed: D-20260430-001`
- **Body**: 간단한 컨텍스트. 결정 큐 항목이면 옵션 요약 + 추천 + trace 경로.
- **Slack Block**: title 은 header, body 는 section/mrkdwn.

## 사용 예

```bash
# 새 결정 발의 시 (tick.sh 또는 claude 가 호출)
scripts/slack-notify.sh decision_opened \
  "🟡 Decision needed: D-20260430-001" \
  "*Type B* — 전투 카메라 고정 vs 추적
*Recommended*: b
*Trace*: \`generations/gen-001/cycles/cy-001/decision-traces/D-20260430-001.md\`"

# 사이클 완료
scripts/slack-notify.sh cycle_complete "🟢 cy-001 closed" "G-WORLD-1 score: 0.42 → 0.58"

# 사용량 임계 (usage-budget.sh 가 자동 호출)
# tick 실패 (tick.sh 가 자동 호출, 기본 off)
```

## 쿨다운

- `budget_warn` 은 1 시간 내 같은 윈도우에서는 중복 발송 안 함 (`last_warn_sent_at` 사용).
- 다른 트리거는 쿨다운 없음 — 이벤트 발생할 때마다 발송.

## 비활성화

- 한 트리거만: `state/slack-config.yml.triggers.<id>: false`
- 전체 일시: `mv state/slack-config.yml state/slack-config.yml.bak` → script 가 알림 없이 진행
