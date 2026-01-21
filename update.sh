#!/bin/bash
echo "🚀 Starting HomeLab Update..."
docker compose pull
docker compose up -d
docker image prune -f
echo "✅ Update complete! System is running."
