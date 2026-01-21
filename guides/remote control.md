#  Remote Control & Global Access Guide

This guide provides a single-script approach to building a budget-friendly HomeLab ecosystem optimized for 100% mobile management.

---

###  One-Stop Installation Script

Run all commands below in sequence to update your system, install Docker, and enable secure global access:

```bash
# 1. Update system and install base dependencies
sudo apt update && sudo apt upgrade -y && sudo apt install openssh-server curl git -y

# 2. Install Docker Engine
curl -fsSL [https://get.docker.com](https://get.docker.com) -o get-docker.sh && sudo sh get-docker.sh

# 3. Deploy Portainer (Mobile Web UI)
docker volume create portainer_data
docker run -d -p 8000:8000 -p 9443:9443 --name portainer --restart=always \
-v /var/run/docker.sock:/var/run/docker.sock \
-v portainer_data:/data portainer/portainer-ce:latest

# 4. Install Tailscale for Secure VPN Access
curl -fsSL [https://tailscale.com/install.sh](https://tailscale.com/install.sh) | sh
sudo tailscale up
