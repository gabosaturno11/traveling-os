#!/bin/bash
# ═══════════════════════════════════════════════════════════════
# TRAVELING OS — Quick Deploy Script
# ═══════════════════════════════════════════════════════════════
# Usage: ./scripts/deploy.sh "commit message"
# ═══════════════════════════════════════════════════════════════

set -e

# Colors
CYAN='\033[0;36m'
GREEN='\033[0;32m'
NC='\033[0m'

echo -e "${CYAN}🪐 TRAVELING OS — Deploying...${NC}"

# Navigate to project
cd "$(dirname "$0")/.."

# Get commit message
MESSAGE="${1:-Quick update}"

# Git operations
git add .
git commit -m "$MESSAGE" || echo "Nothing to commit"
git push

echo -e "${GREEN}✅ Pushed to GitHub — Vercel auto-deploying${NC}"
echo -e "${CYAN}🔗 Live: https://traveling-os.vercel.app${NC}"
