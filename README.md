![Stars](https://img.shields.io/github/stars/TobiMessi/My-Low-End-HomeLab-Ecosystem?style=for-the-badge&color=ffd700)
![License](https://img.shields.io/github/license/TobiMessi/My-Low-End-HomeLab-Ecosystem?style=for-the-badge&color=007bff)
![Repo Size](https://img.shields.io/github/repo-size/TobiMessi/My-Low-End-HomeLab-Ecosystem?style=for-the-badge&color=28a745)


My Low-End HomeLab Ecosystem  
Documentation and configurations for my high-efficiency HomeLab running on a retired HP Compaq pro 6300 SFF.

<p align="center">
  <img src="https://github.com/user-attachments/assets/3b8da885-6173-491a-a40c-a23be35128fb" width="500" title="My HP Compaq Pro 6300 SFF Setup">
  <br>
  <em>My Budget Workhorse: HP Compaq Pro 6300 SFF</em>
</p>

 Hardware Spec
• CPU: Intel Core i5-3470 @ 3.20GHz

• RAM: 16GB DDR3 

• Storage: 256GB SSD + 160GB HDD

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

> [!Note]
> System load remains stable during concurrent DNS queries. Background tasks are optimized to prevent resource spikes.

## Project Economics

| Category | Details |
|:---|:---|
| **Hardware Cost** | **0 PLN** (Salvaged office hardware) |
| **Power Consumption** | ~15W - 25W (Idle/Light Load) |
| **Estimated Monthly Cost** | ~12 - 18 PLN (Electricity) |
| **Profitability** | Passive income apps aim to offset 100% of power costs |

> [!NOTE]
> The hardware was acquired for free during a corporate office upgrade. This makes the project a 100% recycled "zero-cost" build where every earned penny covers the operational expenses.

> [!WARNING]
> **Disclaimer regarding "Passive Income" services (Honeygain, Trafficmonetizer, etc.):**
> Using these applications involves sharing your residential IP address as a proxy server. This may lead to IP reputation degradation or network security risks. The author of this project is not responsible for any damages, account bans, or security incidents resulting from the use of these tools. Use them strictly at your own risk.

> [!NOTE]
> **Deployment Note:**
> Some files in the `Ready-to-deploy-stack` folder may represent individual containers, while others are full Docker Stacks. Depending on the file, you can deploy them as standalone containers via Docker CLI or as complete Stacks using Portainer.

---

###  Project Roadmap
- [x] Basic Docker stack (Passive Income services)
- [x] **Kernel Tuning:** Optimize `vm.swappiness` settings to prioritize physical RAM over Swap usage (target: 10-20 range)
- [x] Implement Watchtower for automated container updates
- [ ] **Network & Monitoring:** Replace **Uptime Kuma** with **Gatus** (Optimization focus)
- [ ] **Advanced Optimization:** Migrate core services to **Distroless** or **Alpine** images to further reduce RAM footprint
- [ ] **Media Ecosystem:** Implement **Plex Media Server** for high-performance streaming
- [ ] **The "Arr" Stack:** Full automation for media management (Sonarr, Radarr, Prowlarr)
- [ ] **Unified Dashboard:** Centralized management via **Homepage**
- [ ]  Replace heavy images with Alpine/Distroless versions (Goal: -500MB RAM)
- [ ] Benchmark system stability with the new Swap settings

---

###  Project Navigation

Explore the core components of this ecosystem:

* **[ready-to-deploy-stacks/](./ready-to-deploy-stacks/)** - Production-ready Docker Compose configurations for AdGuard, monitoring, and passive income apps.
* **[guides/](./guides/)** - Essential step-by-step tutorials for remote access, one-script installation, and mobile-first management.
* **[optimization/](./optimization/)** - Technical guides on RAM tuning and CPU optimization for low-end hardware.
* **[hardware/](./hardware/)** - Detailed specifications and power efficiency data of the server node.
* **[configs/](./configs/)** - Raw configuration files for proxy services and network protection.
