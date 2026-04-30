#!/usr/bin/env bash
# cron-diff.sh — 현재 crontab 과 BOOTSTRAP.cron.example 의 비교
# Iron Law 통과 후 등록 시 어떤 라인이 추가될지 보여준다.

set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
EXAMPLE="$ROOT/BOOTSTRAP.cron.example"

if [[ ! -f "$EXAMPLE" ]]; then
  echo "[cron-diff] $EXAMPLE 없음." >&2; exit 1
fi

echo "============================================================"
echo "  현재 crontab (전체)"
echo "============================================================"
crontab -l 2>/dev/null || echo "(empty)"

echo ""
echo "============================================================"
echo "  my-prompts 가 등록할 라인 (BOOTSTRAP.cron.example)"
echo "============================================================"
cat "$EXAMPLE"

echo ""
echo "============================================================"
echo "  중복 후보 (이미 등록된 비슷한 라인이 있는지)"
echo "============================================================"
crontab -l 2>/dev/null | grep -F 'my-prompts' || echo "(없음 — 처음 등록이면 정상)"

echo ""
echo "============================================================"
echo "  적용 방법 (Iron Law 통과 후에만)"
echo "============================================================"
cat <<'EOF'
1. crontab -l > /tmp/cron.bak
2. crontab -l > /tmp/cron.new
3. cat BOOTSTRAP.cron.example >> /tmp/cron.new
4. diff /tmp/cron.bak /tmp/cron.new   # 추가될 라인 확인
5. crontab /tmp/cron.new
6. crontab -l | tail -20              # 적용 검증

해제:
   crontab -l | grep -v 'my-prompts' | crontab -

전체 시스템 OFF (cron 은 살아있고 ticks 만 idle):
   scripts/system-toggle.sh off "사람 정지"

전체 시스템 OFF (cron 도 제거):
   crontab -l | grep -v 'my-prompts' | crontab -
EOF
