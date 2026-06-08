#!/bin/bash
# docker-entrypoint.sh
# DBCheck Docker 容器启动脚本
# drivers/ 已在构建阶段复制进镜像

set -e

echo "==> DBCheck v$(cat /app/VERSION.txt 2>/dev/null || echo 'unknown')"

echo "==> Starting DBCheck Web UI on port 5003..."
exec python /app/web_ui.py
