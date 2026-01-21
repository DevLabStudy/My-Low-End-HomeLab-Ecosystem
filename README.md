![Stars](https://img.shields.io/github/stars/TobiMessi/My-Low-End-HomeLab-Ecosystem?style=for-the-badge&color=ffd700)
![License](https://img.shields.io/github/license/TobiMessi/My-Low-End-HomeLab-Ecosystem?style=for-the-badge&color=007bff)
![Repo Size](https://img.shields.io/github/repo-size/TobiMessi/My-Low-End-HomeLab-Ecosystem?style=for-the-badge&color=28a745)


My Low-End HomeLab Ecosystem 
Documentation and configurations for my high-efficiency HomeLab running on a retired HP Compaq 8300 SFF.

<p align="center">
  <img src="https://github.com/user-attachments/assets/3b8da885-6173-491a-a40c-a23be35128fb" width="500" title="My HP Compaq 8300 SFF Setup">
  <br>
  <em>My Budget Workhorse: HP Compaq 8300 SFF (i5-3470, 8GB RAM)</em>
</p>

 Hardware Spec
• CPU: Intel Core i5-3470 @ 3.20GHz

• RAM: 8GB DDR3 (The real challenge!)

• Storage: 256GB SSD

• Network: 1Gbps Fiber

 Tech Stack
• OS: Linux (Headless)

• Management: Portainer (Mobile App) & Termius (SSH)

• Containers: 15+ services optimized for low RAM usage.

---

## Resource Usage Overview

Average resource consumption measured via `docker stats` under standard operating conditions.

| Service              | CPU Usage (Avg) | RAM Usage (Avg) | Priority |
|:---------------------|:----------------|:----------------|:---------|
| AdGuard Home         | 0.1% - 0.5%     | 120 MB          | High     |
| Portainer Agent      | 0.1%            | 30 MB           | Medium   |
| Gatus                | 0.2%            | 45 MB           | Medium   |
| Tailscale            | 0.1%            | 25 MB           | High     |
| Passive Income Apps  | 1.0% - 3.0%     | 250 MB          | Low      |
| **Total Ecosystem** | **~5.0%** | **~1.2 GB** | --       |

*Note: System load remains stable during concurrent DNS queries. Background tasks are optimized to prevent resource spikes.*

## Project Economics

| Category | Details |
|:---|:---|
| **Hardware Cost** | **0 PLN** (Salvaged office hardware) |
| **Power Consumption** | ~15W - 25W (Idle/Light Load) |
| **Estimated Monthly Cost** | ~12 - 18 PLN (Electricity) |
| **Profitability** | Passive income apps aim to offset 100% of power costs |

> [!NOTE]
> The hardware was acquired for free during a corporate office upgrade. This makes the project a 100% recycled "zero-cost" build where every earned penny covers the operational expenses.


---

Support my work 

If you find these configs useful, consider supporting my RAM upgrade fund: https://buymeacoffee.com/TobiK0

Or login by my links 

*https://earnapp.com/i/uI7F8PX2 *https://traffmonetizer.com/?aff=2081267 *https://join.honeygain.com/TOBIA294F6 

---


### 🗺️ Project Roadmap
- [x] Initial hardware setup (HP Compaq 8300 SFF)
- [x] Basic Docker stack (Passive Income services)
- [ ] **Network & Monitoring:** Replace Pi-hole with **AdGuard Home** and Uptime Kuma with **Gatus** (Optimization focus)
- [ ] **Media Ecosystem:** Implement **Plex Media Server** for high-performance streaming
- [ ] **The "Arr" Stack:** Full automation for media management (Sonarr, Radarr, Prowlarr)
- [ ] **Unified Dashboard:** Centralized management via **Homepage**


---

Project Navigation
Explore the different parts of this ecosystem:
*  **[hardware/](hardware/)** - Full server specifications (i5-3470, 8GB RAM, 256GB SSD).
*  **[ready-to-use-stacks/](ready-to-use-stacks/)** - Production-ready Docker Compose files for all services.
*  **[optimization/](optimization/)** - Guides on RAM management and system tuning for budget hardware.
*  **[guides/](guides/)** - Step-by-step tutorials for remote access and mobile management.
*  **[configs/](configs/)** - Specific configuration files for Nginx and other services.
