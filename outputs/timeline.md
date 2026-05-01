# Outputs Timeline

> 시스템이 발생시킨 모든 산출물의 시계열 로그. 사람이 *시간순* 으로 무엇이 만들어졌는지 한눈에 보기 위한 인덱스.
> 각 항목은 `apply-decisions.sh` / `tick.sh` / `save-image.sh` 가 자동 append. 사람이 손으로 추가해도 됨.
> 형식: `시각 (UTC) | 카테고리 | 산출 | 경로 | 출처 (결정 / 사이클 / 조직)`

| 시각 (UTC) | 카테고리 | 산출 | 경로 | 출처 |
|------------|----------|------|------|------|
| 2026-05-01T14:32:45 | seed | seed 봉인 — *"인생이란 나라는 고객을 최고로 만족시키기 위한 여정"* | `seed.md` | gen-001 시동 |
| 2026-05-01T14:32:45 | decision | D-20260501-001 발의 (Type C) — 조직 7 패턴 + 세계 후보 3 묶음 | `decisions/closed/D-20260501-001.yml` | BOOTSTRAP §⑦ |
| 2026-05-01T15:55:29 | decision | D-20260501-001 응답 — orgs A, world 2 (여정 자체가 지도) | (동일 yml) | 사용자 (Slack 모달) |
| 2026-05-01T16:21:42 | org-charter | loremaster charter | `generations/gen-001/orgs/loremaster.md` | apply-decisions D-001 |
| 2026-05-01T16:21:42 | org-charter | designer charter | `generations/gen-001/orgs/designer.md` | apply-decisions D-001 |
| 2026-05-01T16:21:42 | org-charter | implementer charter | `generations/gen-001/orgs/implementer.md` | apply-decisions D-001 |
| 2026-05-01T16:21:42 | org-charter | art-director charter | `generations/gen-001/orgs/art-director.md` | apply-decisions D-001 |
| 2026-05-01T16:21:42 | org-charter | writer charter | `generations/gen-001/orgs/writer.md` | apply-decisions D-001 |
| 2026-05-01T16:21:42 | org-charter | critic charter | `generations/gen-001/orgs/critic.md` | apply-decisions D-001 |
| 2026-05-01T16:21:42 | org-charter | voice-keeper charter | `generations/gen-001/orgs/voice-keeper.md` | apply-decisions D-001 |
| 2026-05-01T16:21:42 | world-bible | *여정 자체가 지도* — Bible v0.1 | `outputs/worldbuilding/the-map-is-the-journey/bible-v0.1.md` | apply-decisions D-001 |
| 2026-05-01T16:30:01 | tick | 첫 자동 cron tick (checker) — `$3` budget cap | `logs/cron.log` | cron `*/10` |
| 2026-05-01T16:31:00 | illustration | World key visual #1 "백지의 새벽" | `outputs/worldbuilding/the-map-is-the-journey/illustrations/key-visual-blank-page-dawn.png` | 사람 (genai 테스트) |

---

## 카테고리 (현재 사용 중)

- `seed` — `seed.md` 변경 (봉인·재봉인 · 매니페스토 갱신)
- `decision` — `decisions/open|closed/D-*.yml` 발의·응답·apply
- `tick` — cron 또는 수동 tick 1 회 (요약만, 세부는 `ticks/tick-NNN.md`)
- `org-charter` — `generations/gen-N/orgs/<id>.md` 작성·갱신
- `world-bible` — `outputs/worldbuilding/<world>/bible-v*.md`
- `illustration` — 이미지 (`illustrations/`)
- `location` — 지명·지역 산출 (`outputs/worldbuilding/<world>/locations/<slug>/`)
- `character` — 인물 (`outputs/worldbuilding/<world>/characters/<slug>/`)
- `event` — 사건·장면 (`outputs/worldbuilding/<world>/events/<slug>/`)
- `product` — 파생 product (게임 vertical slice / 단편 / 이미지 세트 — G-PRODUCT-1 부터)
- `review` — 사이클·gen 회고 (`generations/gen-N/review.md`)

> 카테고리는 자유롭게 추가 가능. 새 카테고리 등장 시 본 절에 한 줄 추가.

## 보는 법

- 시간순 → 위 표 그대로
- 카테고리별 → `grep '| 카테고리 |' outputs/timeline.md`
- 특정 결정 추적 → trace md 와 함께: `cat generations/gen-001/cycles/cy-001/decision-traces/D-20260501-001.md`
