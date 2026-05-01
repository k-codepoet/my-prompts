FROM python:3.12-slim

WORKDIR /app

# 셸 스크립트가 jq, curl 을 부름 (slack-notify, cron-diff 등).
RUN apt-get update \
 && apt-get install -y --no-install-recommends jq curl ca-certificates \
 && rm -rf /var/lib/apt/lists/*

COPY requirements.txt /tmp/requirements.txt
RUN pip install --no-cache-dir -r /tmp/requirements.txt

# 코드는 docker-compose 가 bind mount 로 주입.
# CMD 는 docker-compose.yml 에서 service 별로 지정.
