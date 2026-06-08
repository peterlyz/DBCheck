#!/bin/bash
# docker-entrypoint.sh
# DBCheck Docker 容器启动脚本

set -e

echo "==> DBCheck v$(cat /app/VERSION.txt 2>/dev/null || echo 'unknown')"

# Ensure drivers/ directory exists and is writable
mkdir -p /app/drivers
chmod 755 /app/drivers

# Check drivers status
DRIVER_COUNT=$(find /app/drivers -type f 2>/dev/null | wc -l)
if [ "$DRIVER_COUNT" -eq 0 ]; then
    echo "==> WARNING: /app/drivers/ is empty."
    echo "    Oracle client libs and YashanDB wheel are not included."
    echo "    To enable these databases, place driver files in /app/drivers/"
    echo "    or use '-v /path/to/drivers:/app/drivers' when running the container."
else
    echo "==> Drivers found: $DRIVER_COUNT file(s) in /app/drivers/"
fi

echo "==> Starting DBCheck Web UI on port 5003..."
exec python /app/web_ui.py
