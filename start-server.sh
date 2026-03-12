#!/bin/bash
# 本地预览脚本
# 电脑访问: http://localhost:3000
# 手机访问: 确保手机与电脑同一 WiFi，使用下面显示的 IP 地址
cd "$(dirname "$0")"
PORT=3000
echo "正在启动本地服务器..."
echo ""
echo "【电脑】请在浏览器打开: http://localhost:$PORT"
echo ""
# 获取本机 IP（macOS/Linux）
if command -v ip &>/dev/null; then
  IP=$(ip route get 1 2>/dev/null | awk '{print $7; exit}' 2>/dev/null)
fi
if [ -z "$IP" ] && command -v ifconfig &>/dev/null; then
  IP=$(ifconfig | grep "inet " | grep -v 127.0.0.1 | awk '{print $2}' | head -1)
fi
if [ -n "$IP" ]; then
  echo "【手机】同一 WiFi 下打开: http://$IP:$PORT"
  echo ""
fi
echo "按 Ctrl+C 停止服务器"
echo "----------------------------------------"
python3 -m http.server $PORT --bind 0.0.0.0
