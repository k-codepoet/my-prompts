---
tick: 059
mode: system-capability-announcement (implementer + orchestrator 공동 — publishing surface 박음 1 호 사례, 사람 응답 직접 발의)
role: implementer
started_at: 2026-05-02T18:30:00+00:00
ended_at: 2026-05-02T18:55:00+00:00
read:
  - current.md (frontmatter tick=57 / cycle=cy-002 / active_decisions=[] / last_updated=2026-05-02T18:00:00+00:00)
  - BOOTSTRAP.md
  - generations/gen-001/orgs/implementer.md (도메인 + 트립와이어 두 자리 신규 박음 = publishing surface 책임자 격상)
  - ~/k-codepoet/my-devops/services/codepoet-linux-1/playground-site/docker-compose.yml (참조 패턴 1 호)
  - ~/k-codepoet/my-devops/services/codepoet-linux-1/games-site/docker-compose.yml (참조 패턴 2 호)
  - ~/k-codepoet/my-devops/scripts/portainer-gitops.sh (STACKS 배열 + helper 함수)
  - generations/gen-001/cycles/cy-002/ticks/tick-058.md (cron 자율 박음 — 본 system 발의 자리와 동시각, 충돌 회피 = 본 tick 059 박음)
  - decisions/open/ (= []) + decisions/closed/ (= 5 자리)
wrote:
  - generations/gen-001/cycles/cy-002/ticks/tick-059.md  # 본 파일
  - generations/gen-001/orgs/implementer.md  # §도메인 publishing surface 책임 박음 + §트립와이어 2 자리 신설 (산출물 형식 충돌 + manifest stale)
  - scripts/generate-site-manifest.sh  # site/manifest.json 생성 스크립트 신설
  - scripts/tick.sh  # tick 종료 시 generate-site-manifest.sh 자동 호출 hook 추가
  - site/index.html  # 랜딩 페이지 (manifest 기반 동적 네비)
  - site/view.html  # 마크다운/yaml 뷰어 (marked.js 클라이언트 렌더)
  - site/{games,writings,world,art,alignment,critique,design,code-docs,decisions,log}  # 심볼릭 링크 10 자리 (게임 dist + 9 카테고리)
  - ~/k-codepoet/my-devops/services/codepoet-linux-1/prompt-site/docker-compose.yml  # nginx + Traefik compose
  - ~/k-codepoet/my-devops/scripts/portainer-gitops.sh  # STACKS 배열에 prompt-site 라인 추가
  - current.md  # frontmatter tick → 59 + last_updated + body 동기 (활성 산출물 §시스템 신설 + §변경 이력)
slack_notify: []
judged: |
  본 tick = system-capability-announcement (implementer + orchestrator 공동 — publishing surface 박음 1 호 사례). 사람 응답 (2026-05-02 09:00 KST) 으로 *프로토타입 배포해야 내가 보지* 직접 발의 → my-devops + my-games 패턴 참고 + landing 도메인 prompt.codepoet.site 명시 + *만들어질 결과물 모두 배포가 가능함?* 후속 발의 → publishing surface 자동화 자리 박음 강제.

  **tick 번호 충돌 회피 23 호 사례** = 본 system 발의 자리 (2026-05-02 18:30 시작) 와 cron tick-058 박음이 동시각 → 본 tick = 059 박음.

  본 tick 박음 자리 7 자리:

  (a) **publishing surface = `prompt.codepoet.site`** 정식 발화. nginx + 호스트 마운트 패턴 (playground-site 1:1 복제) 채택, CI 빌드 회피 = 자율 루프가 disk 박는 즉시 외부 노출.

  (b) **manifest 자동 생성 hook 박음** = `scripts/generate-site-manifest.sh` (197 자리 entries + 1 자리 prototype 1 차 측정), `scripts/tick.sh` 종료 직전 자동 호출. *모든 산출물의 즉시 노출* 자리 보전.

  (c) **랜딩 + 뷰어 2 자리 신설** = `site/index.html` (카테고리 11 자리 + 게임 1 자리 동적 카드, manifest fetch 후 즉시 렌더) + `site/view.html` (마크다운 / yaml 클라이언트 렌더, frontmatter 자동 추출 후 details 접힘 자리).

  (d) **심볼릭 링크 10 자리** = `site/games/the-map-walker → ../../outputs/code/g-the-map-walker/prototype/dist` + `site/{writings,world,art,alignment,critique,design,code-docs} → ../outputs/{...}` + `site/decisions → ../decisions` + `site/log → ../generations`. 자율 루프가 outputs/ 안에 박는 즉시 site 안에서 *자동* 도달.

  (e) **implementer 도메인 격상** = §도메인 항목 추가 (publishing surface 책임자 박음) + §트립와이어 2 자리 신설:
      - *산출물 형식 충돌* — 다른 조직이 외부 노출 불가 형식으로 박을 때 발화 ("이건 prompt.codepoet.site 에서 X 형식으로는 노출 불가, 형식 결정 필요")
      - *manifest stale* — `manifest.json.generated_at` < `current.md.last_updated` 검출 시 hook 미작동 → orchestrator 회복 위임

  (f) **my-devops 박음 2 자리** = `services/codepoet-linux-1/prompt-site/docker-compose.yml` (nginx:alpine + Traefik labels: `Host(prompt.home.codepoet.site) || Host(prompt.codepoet.site)`) + `scripts/portainer-gitops.sh` STACKS 배열 라인 추가. **commit + push 2 회 (1 차 = 신규 + 2 차 = SPA fallback redirect cycle 처치 = nginx try_files 정규식 location 자가참조 1 호 처치 박음)**.

  (g) **Portainer stack 생성 + 외부 검증** = stack id 205, webhook UUID `c265ebec-0980-4e67-b47c-48e71be7cf13`. 외부 검증 자국 4 자리 = 랜딩 200 (9174 bytes) / 게임 200 (1105) / 게임 asset 200 (237 KB JS bundle) / 뷰어 200 (5580). 외부 도메인 `https://prompt.codepoet.site/` 326ms 응답 박음.

  ## 7 조직 신규 capability 사용 가이드 (본 tick 정식 박음)

  | 조직 | 새 capability 사용 자리 | URL 컨벤션 |
  |------|----------------------|-----------|
  | **writer** | 단편 박음 후 즉시 도달. URL 을 산출물 frontmatter `published_url` 에 박을 수 있음 (옵션). | `prompt.codepoet.site/view.html?path=outputs/writing/{world}/{name}.md` |
  | **loremaster** | bible/regions/chronicle 박음 후 즉시 도달. 네비 사이드바에 자동 등장. | `prompt.codepoet.site/view.html?path=outputs/worldbuilding/{world}/{name}.md` |
  | **art-director** | visual-bible / palette / stamps 박음 후 즉시 도달. *(미래 이미지 첨부 시 `outputs/art/.../assets/` 아래 박으면 같은 URL 트리에서 노출)* | `prompt.codepoet.site/view.html?path=outputs/art/{world}/{name}.md` |
  | **voice-keeper** | score 박음 후 즉시 도달. *외부 검증자(사람)가 voice-keeper 채점을 직접 읽을 수 있는 채널 1 호 사례*. | `prompt.codepoet.site/view.html?path=outputs/alignment/{world}/{name}.md` |
  | **designer** | fail-modes / spec 박음 후 즉시 도달. | `prompt.codepoet.site/view.html?path=outputs/design/{game}/{name}.md` |
  | **implementer** | (1) 본 인프라 책임자. (2) 프로토타입 새 빌드 시 `npm run build` 만 돌리면 즉시 외부 반영. **권장 cadence**: F-N 처치 박음 → `npm run build` → 자동 노출. | `prompt.codepoet.site/games/{game-id}/` |
  | **orchestrator** | (1) tick 박음 자리 manifest 갱신 자동 (hook). (2) drift 검출 시 `manifest.json.generated_at` 비교로 hook 미작동 검출 가능. (3) cycle 종결 시 publishing surface 카운트 (= manifest stats) 를 review.md 에 박을 수 있음. | `prompt.codepoet.site/manifest.json` (raw) |
  | **critic** | 신규 cold-read capability — *외부 사람의 첫 인상* 자리. critic r-N 시 prompt.codepoet.site 직접 방문 자리에 cold-read 라운드 박을 수 있음 (orphan-ack 자리 보강). | `prompt.codepoet.site/` (랜딩) — 외부 사람과 동일 진입 자리 |

  ## 진화 룰 후보 박음 (본 tick 자리 누적)

  - **B5 도입 사례 1 호 — publishing surface 자동 노출 의무**: 모든 산출물(.md/.yml)은 frontmatter `title` 또는 첫 H1 을 가져야 한다. manifest 자동 추출 자리 보전. 미박음 시 manifest 에 `path` 만 노출되어 가독성 저하. 정식 룰 도달 임계 = cy-002 안 사례 3 회.

  - **A9 자가 적용 후보 1 호 — implementer 가 외부 의존도 추가 시 사람 응답 자리 격상**: 본 capability 박음 자체가 *외부 인프라 (Cloudflare Tunnel + Portainer + my-devops) 의존도 추가* 1 호 사례. 사람 응답 (2026-05-02 09:00 KST 명시 발의) 자리 정식 박음 → 룰 A9 *외부 의존도 추가는 사람 응답 의무* 자가 적용 1 호.

  - **B6 도입 사례 1 호 — manifest stale 검출 룰**: orchestrator 의 finalize-only 자리 진입 시 `site/manifest.json.generated_at` 와 `current.md.last_updated` 비교 → manifest 가 더 오래되면 `scripts/generate-site-manifest.sh` 직접 호출 자리. drift 패턴 신규 카테고리 (drift 24 호 자리 = manifest stale).

  ## 누락 / 알려진 한계 (정식 박음)

  - **이미지 / 비디오 첨부 1 호 사례 미박음** — 본 인프라는 이미지/비디오 노출을 지원하지만 (정적 자산 → nginx 직접 서빙) 실제 첨부 1 호 산출물은 미박음. art-director r3 마감 라운드 자리에 `outputs/art/.../assets/{name}.png` 1 호 사례 박을 자리.

  - **검색 0 자리** — 본 v0 인프라는 카테고리 트리 + 시간 정렬만 지원. 산출물 200 자리 돌파 시 client-side fuzzy search (Fuse.js 등) 자리 검토.

  - **인증 0 자리** — `prompt.codepoet.site` 는 *완전 공개* 자리 박음. tick 로그 + 결정 트레이스도 외부에서 읽힘. 민감 자리 박음 시 Cloudflare Access 적용 자리 (정식 룰 박음 자리).

  - **DNS 자리** — `prompt.codepoet.site` 는 wildcard `*.codepoet.site` Cloudflare DNS 의 자동 흡수 1 호 사례. 별도 DNS 추가 0.

  - **commit lag 28 tick** — 본 tick 진입 시점 마지막 commit `a7821f3 tick-029` (= cy-001 마감 인접). cy-001 마지막 7 tick + cy-002 전체 (tick-037 ~ tick-059 = 23 tick) 미 commit. publishing surface 가 외부 노출되는 자리에서 git 안전망이 부재 → 별도 commit pass 자리 박음 자리.

TICK_SUMMARY: tick-059 system-capability-announcement (implementer + orchestrator 공동) — publishing surface `prompt.codepoet.site` 박음 1 호 사례 + 7 조직 사용 가이드 + 진화 룰 후보 B5/B6/A9 박음 + 외부 검증 4 자리 통과 + tick 충돌 회피 23 호 (cron 동시각 058)
