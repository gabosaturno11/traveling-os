# 🪐 TRAVELING OS — Flight Command Center

> A premium dark-mode **one-way flight search** & travel management system built for the **SMFAM** community.

[![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/new/clone?repository-url=https://github.com/gabosaturno11/traveling-os)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

---

## 🖥️ Sync Information

| Location | Path |
|----------|------|
| **Live URL** | https://traveling-os.vercel.app |
| **GitHub** | https://github.com/gabosaturno11/traveling-os |
| **C2 MacBook Pro (local)** | `~/Library/Mobile Documents/com~apple~CloudDocs/Life OS /00_TRAVELING OS/TRAVELING-OS-V1/` |
| **iCloud Sync** | Auto-syncs to all devices |

> **Note:** This repo mirrors the local folder on C2 MacBook Pro (gabosaturno). Changes pushed to GitHub auto-deploy via Vercel.

---

## 🎯 What Is This?

**Traveling OS** is a self-contained flight search and travel organization tool. Currently optimized for **one-way flights** from FLL/MIA → Mérida routes. Features include:

- **Flight Search & Filtering** — Sort by price, comfort, timing, airline
- **Smart Recommendations** — Top 5 AI-curated picks based on value
- **Wildcard Deals** — Hidden gems outside your criteria
- **Notes Hub** — Save travel thoughts, itineraries, packing lists
- **Document Vault** — Track visa, passport, bookings, insurance status
- **CSV Export** — Download or copy all flight data

---

## 🚀 Quick Start

### Option 1: Vercel (Recommended)
```bash
npx vercel --prod
```

### Option 2: Drag & Drop
1. Go to [vercel.com/new](https://vercel.com/new)
2. Drag the `index.html` file
3. Done in 30 seconds

### Option 3: Netlify
```bash
npx netlify deploy --prod --dir=.
```

### Option 4: Local Development
```bash
# Clone the repo
git clone https://github.com/gabosaturno11/traveling-os.git
cd traveling-os

# Open in browser
open index.html
# or
npx serve .
```

---

## 📁 Project Structure

```
traveling-os/
├── index.html          # Main application (self-contained)
├── README.md           # This file
├── LICENSE             # MIT License
├── vercel.json         # Vercel deployment config
├── .gitignore          # Git ignore rules
└── docs/
    ├── SCALING.md      # Scaling roadmap (V2-V4 features)
    ├── CHANGELOG.md    # Version history
    └── CLI-COMMANDS.sh # Deployment commands reference
```

### Local Paths (C2 MacBook Pro)
```
~/Library/Mobile Documents/com~apple~CloudDocs/Life OS /00_TRAVELING OS/
├── TRAVELING-OS-V1/           # <-- THIS FOLDER (synced to GitHub)
├── Traveling-OS-V1.zip        # Original V1 package
└── Traveling-OS-V2.-DEPLOYMENT.zip  # V2 updates
```

---

## ✨ Features

### 🛫 Flight Search
- Filter by date, price range, cabin class, airport
- Multi-select airlines (American, Aeromexico, United, Delta, Viva Aerobus)
- Nonstop or 1-stop options
- Sort by price, comfort score, date, timing

### ⭐ Smart Recommendations
- Top 5 picks based on price + comfort + timing balance
- Prioritizes nonstop routes with reliable airlines
- Real booking links to airline websites

### 🔥 Wildcard Deals
- Flights outside your criteria that offer exceptional value
- Saturday early morning ultra-budget options
- Premium business class alternatives

### 📝 Notes Hub
- Write and save travel notes locally
- Export all notes as `.txt`
- Character count tracking
- Copy individual notes to clipboard

### 📁 Document Vault
- Track travel document status (Complete/Pending/Missing)
- Categories: Visa, Passport, Bookings, Insurance, Other
- Filter by category
- Add custom documents
- LocalStorage persistence

### 📊 CSV Export
- Airlines summary with reliability scores
- Complete flight data table
- Download as CSV or copy to clipboard

---

## 📱 Mobile Optimized

- Responsive design for all screen sizes
- Touch-friendly controls
- Safe area support for notched devices
- Optimized tap targets (minimum 44px)
- Smooth scrolling with momentum
- No horizontal overflow issues

---

## 🎨 Design System

### Colors
```css
--bg-void: #0a0a0c       /* Deepest black */
--bg-deep: #0f1014       /* Deep background */
--bg-surface: #151519    /* Card surfaces */
--accent-primary: #00cfff /* Cyan accent */
--accent-success: #00ff88 /* Green (cheap) */
--accent-warning: #ffaa00 /* Orange (moderate) */
--accent-purple: #a855f7  /* Purple (premium) */
```

### Typography
- **Display**: Sora (Google Fonts)
- **Mono**: JetBrains Mono (Google Fonts)

### Effects
- Noise texture overlay
- Ambient glow orbs (animated)
- Glass morphism panels
- Gradient accent borders

---

## 🗺️ Roadmap

### V1.0 ✅ (Current)
- [x] Flight search & filtering
- [x] Top 5 recommendations
- [x] Wildcard deals
- [x] CSV export
- [x] Dark mode command center UI

### V1.1 ✅ (Current)
- [x] Notes Hub with localStorage
- [x] Document Vault
- [x] Mobile optimization
- [x] GitHub repo + documentation

### V2.0 (Planned)
- [ ] Live API pricing (Skyscanner, Kayak, Google Flights)
- [ ] Real-time price alerts
- [ ] Calendar view for price trends
- [ ] Return flight pairing

### V3.0 (Planned)
- [ ] Google Calendar sync
- [ ] Multi-origin city support
- [ ] Weather integration
- [ ] Notion database sync

### V4.0 (Future)
- [ ] Voice input for search
- [ ] Price prediction AI
- [ ] Credit card rewards optimization
- [ ] Browser extension for monitoring
- [ ] Slack/Discord bot notifications

See [SCALING.md](./docs/SCALING.md) for detailed technical roadmap.

---

## 🔧 Configuration

### Vercel Deployment
The `vercel.json` is pre-configured with security headers:
```json
{
  "headers": [
    {
      "source": "/(.*)",
      "headers": [
        { "key": "X-Content-Type-Options", "value": "nosniff" },
        { "key": "X-Frame-Options", "value": "DENY" },
        { "key": "X-XSS-Protection", "value": "1; mode=block" }
      ]
    }
  ],
  "rewrites": [
    { "source": "/(.*)", "destination": "/index.html" }
  ]
}
```

### Custom Domain
1. Deploy to Vercel
2. Go to Project Settings → Domains
3. Add your custom domain
4. Update DNS records

---

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit changes (`git commit -m 'Add amazing feature'`)
4. Push to branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

---

## 📄 License

MIT License — see [LICENSE](./LICENSE) for details.

---

## 👤 Author

**Gabo Saturno** — [@gabosaturno11](https://github.com/gabosaturno11)

Part of the **Saturno Movement** ecosystem.

- Website: [saturnomovement.com](https://saturnomovement.com)
- Instagram: [@saturnomovement](https://instagram.com/saturnomovement)

---

## 🙏 Acknowledgments

- Flight data research powered by Perplexity AI
- UI inspiration from Linear, Endel, Vercel
- Built with love for the SMFAM community

---

<p align="center">
  <strong>🪐 TRAVELING OS</strong> — Your flight command center
</p>
