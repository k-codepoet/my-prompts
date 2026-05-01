# slack-app/

Slack App definition for the my-prompts HITL bridge.
**Manifest = source of truth.** Slack workspace 의 앱 설정은 `manifest.yml` 에서만 변경하고 `scripts/slack-app-sync.sh` 로 동기화.

## 파일

- `manifest.yml` — Slack App 의 전체 정의 (display, scopes, slash, events, socket mode 등).

## 첫 동기화 (사용자 필수 단계)

### 1. Configuration Token 발급
1. https://api.slack.com/apps → 우상단 **"Your Apps"** → **"Manage your apps"** 또는 **"App configuration tokens"**
2. **Generate Token** → workspace 선택 → **Refresh Token** + **Access Token** 발급
3. Access Token (xoxe.xoxp-...) 또는 Refresh Token (xoxe-...) 둘 다 가능. Refresh 가 12 시간 이상 살아남음.

### 2. Sync 실행
```bash
SLACK_CONFIG_ACCESS_TOKEN=xoxe.xoxp-... scripts/slack-app-sync.sh
# 또는 자동 회전:
SLACK_CONFIG_REFRESH_TOKEN=xoxe-... scripts/slack-app-sync.sh
```

성공 시:
- `state/slack-app.yml` (gitignored) 에 `app_id`, `signing_secret`, `client_id`, `client_secret`, (회전된) `refresh_token` 저장
- 다음 단계 안내 출력

### 3. Workspace 에 Install (UI)
1. `https://api.slack.com/apps/<app_id>/install-on-team` 방문
2. **Allow** → **Bot User OAuth Token** (xoxb-...) 복사
3. `state/slack-app.yml` 에 `bot_token: xoxb-...` 추가

### 4. App-Level Token 생성 (UI, Socket Mode 용)
1. `https://api.slack.com/apps/<app_id>/general` 방문
2. **App-Level Tokens** 섹션 → **Generate Token and Scopes**
3. Token Name = `socket`, Scope = `connections:write`
4. **Generate** → xapp-... 복사
5. `state/slack-app.yml` 에 `app_token: xapp-...` 추가

### 5. 채널 생성 + 봇 초대
1. Slack 에서 채널 생성 (예: `#my-prompts`)
2. 채널에서 `/invite @my-prompts`

## 재동기화 (manifest 변경 후)

```bash
scripts/slack-app-sync.sh
```

`state/slack-app.yml` 의 `refresh_token` 을 사용해 access token 자동 회전 + `apps.manifest.update` 호출.

## 디버그

- `apps.manifest.export` 로 현재 Slack 측 설정 확인:
  ```bash
  source state/slack-app.yml >/dev/null  # (실제로는 yaml 이라 source 안 됨; jq/python 으로 읽음)
  curl -X POST https://slack.com/api/apps.manifest.export \
    -H "Authorization: Bearer <access_token>" \
    -d "app_id=<app_id>"
  ```
- 동기화 실패 시 stderr 에 Slack API 에러 본문 출력됨.

## 봇 운영 (docker compose)

repo 루트의 `docker-compose.yml` 이 봇을 영구 동작시킨다.

```bash
# 시작 (백그라운드)
docker compose up -d

# 로그 (실시간)
docker compose logs -f slack-bot

# 상태
docker compose ps

# 정지
docker compose stop slack-bot
docker compose down            # 컨테이너 제거 (이미지·볼륨 유지)

# 코드·manifest 변경 후 재기동
docker compose restart slack-bot

# Dockerfile/requirements.txt 변경 시 이미지 재빌드
docker compose build slack-bot && docker compose up -d
```

`restart: unless-stopped` 정책이라 봇이 죽으면 docker 가 자동 재기동.
호스트 재부팅 후엔 docker daemon 시작과 함께 봇도 자동 시작.
