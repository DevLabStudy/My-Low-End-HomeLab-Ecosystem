# My Recommended Pi-hole Blocklists

To keep my network clean and my i5-3470 efficient, I use a curated selection of blocklists. These lists help reduce DNS traffic and save bandwidth on my Gigabit Fiber connection.

1. The "Must-Have" Lists
These are the foundations for blocking ads and common tracking:
- Steven Black's Unified List: `https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts`
- OISD Basic: `https://big.oisd.nl/`

2. Privacy & Telemetry
To stop smart TVs and devices from "phoning home":
- Lightswitch05 - Ads & Tracking: `https://www.github.com/lightswitch05/hosts-blocklists`

3. Performance Tip
On my system with 8GB RAM, I avoid adding too many massive lists (over 1M domains). It keeps the Pi-hole dashboard snappy and the memory usage low.

---
How to add these:
1. Login to your Pi-hole.
2. Go to AdLists.
3. Paste the URLs above and click Add.
4. Run `pihole -g` in the terminal or click Update Gravity.
