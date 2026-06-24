#!/bin/bash
# TomaFocus PWA — Local Server
# Run this script, then open the URL on any device on your WiFi.

PORT=${1:-8080}
IP=$(hostname -I 2>/dev/null | awk '{print $1}' || echo "localhost")

echo ""
echo "  🍅 TomaFocus PWA Server"
echo "  ═══════════════════════════════════"
echo ""
echo "  ✅ Local:   http://localhost:$PORT"
echo "  📱 Network: http://$IP:$PORT"
echo ""
echo "  Open the Network URL on your phone/tablet"
echo "  to use TomaFocus. Add to Home Screen for"
echo "  a full-screen app experience."
echo ""
echo "  Press Ctrl+C to stop the server."
echo ""

cd "$(dirname "$0")"
python3 -m http.server $PORT
