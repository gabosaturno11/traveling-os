#!/bin/bash
# ═══════════════════════════════════════════════════════════════
# TRAVELING OS — Status Check
# ═══════════════════════════════════════════════════════════════
# Shows git status, last commit, and deployment info
# ═══════════════════════════════════════════════════════════════

CYAN='\033[0;36m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

cd "$(dirname "$0")/.."

echo -e "${CYAN}═══════════════════════════════════════════════════════════════${NC}"
echo -e "${CYAN}🪐 TRAVELING OS — Status${NC}"
echo -e "${CYAN}═══════════════════════════════════════════════════════════════${NC}"
echo ""

echo -e "${YELLOW}📂 Local Path:${NC}"
pwd
echo ""

echo -e "${YELLOW}🔗 Links:${NC}"
echo "   Live:   https://traveling-os.vercel.app"
echo "   GitHub: https://github.com/gabosaturno11/traveling-os"
echo ""

echo -e "${YELLOW}📊 Git Status:${NC}"
git status --short
echo ""

echo -e "${YELLOW}📝 Last 3 Commits:${NC}"
git log --oneline -3
echo ""

echo -e "${GREEN}═══════════════════════════════════════════════════════════════${NC}"
