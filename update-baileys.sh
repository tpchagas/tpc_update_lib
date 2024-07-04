#!/bin/bash
su deploy <<'EOF'
cd /home/deploy/multi100/backend
pm2 stop all
npm remove @whiskeysockets/baileys
npm install @whiskeysockets/baileys
pm2 start all
EOF