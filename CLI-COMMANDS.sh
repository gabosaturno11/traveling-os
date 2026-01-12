# 🪐 TRAVELING OS — Claude Code CLI Commands
# =============================================
# File Location: iCloud > LIFE OS > TRAVELING OS > TRAVELING-OS-V1

# ═══════════════════════════════════════════════════════════════
# STEP 1: Navigate to your project folder
# ═══════════════════════════════════════════════════════════════

cd ~/Library/Mobile\ Documents/com~apple~CloudDocs/LIFE\ OS/TRAVELING\ OS/TRAVELING-OS-V1

# ═══════════════════════════════════════════════════════════════
# STEP 2: Initialize Git & Commit
# ═══════════════════════════════════════════════════════════════

git init
git add .
git commit -m "🪐 TRAVELING OS v1.1 - One Way Flight Command Center"

# ═══════════════════════════════════════════════════════════════
# STEP 3: Create GitHub Repo (using gh CLI)
# ═══════════════════════════════════════════════════════════════

# Option A: Using GitHub CLI (recommended)
gh repo create gabosaturno11/traveling-os --public --source=. --remote=origin --push

# Option B: Manual (if gh CLI not installed)
# First create repo at: https://github.com/new
# Name: traveling-os | Public | No README
# Then run:
git remote add origin https://github.com/gabosaturno11/traveling-os.git
git branch -M main
git push -u origin main

# ═══════════════════════════════════════════════════════════════
# STEP 4: Deploy to Vercel (gabosaturno11 account)
# ═══════════════════════════════════════════════════════════════

# Login first (make sure it's gabosaturno11, NOT gabosaturno03)
npx vercel login

# Deploy
npx vercel --prod

# When prompted:
# → Set up and deploy? Y
# → Which scope? gabosaturno11 (personal)
# → Link to existing project? N  
# → Project name? traveling-os
# → Directory? ./

# ═══════════════════════════════════════════════════════════════
# STEP 5: Link GitHub for Auto-Deploy (optional)
# ═══════════════════════════════════════════════════════════════

npx vercel link
npx vercel git connect

# ═══════════════════════════════════════════════════════════════
# 🚀 ONE-LINER (if already logged in)
# ═══════════════════════════════════════════════════════════════

cd ~/Library/Mobile\ Documents/com~apple~CloudDocs/LIFE\ OS/TRAVELING\ OS/TRAVELING-OS-V1 && git init && git add . && git commit -m "🪐 TRAVELING OS v1.1" && gh repo create gabosaturno11/traveling-os --public --source=. --remote=origin --push && npx vercel --prod

# ═══════════════════════════════════════════════════════════════
# 📁 FILES TO COPY TO FOLDER FIRST
# ═══════════════════════════════════════════════════════════════
# 
# Download from Claude and place in TRAVELING-OS-V1:
# ├── index.html        (main app)
# ├── README.md         (documentation)
# ├── vercel.json       (deploy config)
# ├── LICENSE           (MIT)
# ├── .gitignore        (git rules)
# └── docs/
#     ├── SCALING.md    (roadmap)
#     └── CHANGELOG.md  (version history)
#
# ═══════════════════════════════════════════════════════════════

# ═══════════════════════════════════════════════════════════════
# ✅ VERIFICATION
# ═══════════════════════════════════════════════════════════════

# Check GitHub repo:
open https://github.com/gabosaturno11/traveling-os

# Check Vercel deployment:
open https://traveling-os.vercel.app

# ═══════════════════════════════════════════════════════════════
# 🔧 TROUBLESHOOTING
# ═══════════════════════════════════════════════════════════════

# Wrong Vercel account? Logout and login again:
npx vercel logout
npx vercel login
# → Select gabosaturno11

# Wrong GitHub account?
gh auth logout
gh auth login
# → Select gabosaturno11

# Permission denied on iCloud folder?
# Make sure iCloud sync is complete (no uploading icon)
