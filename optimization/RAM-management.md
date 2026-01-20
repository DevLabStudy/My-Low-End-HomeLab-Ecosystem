8GB RAM Survival Guide (Optimization Tips)

My server (HP Compaq 8300) runs over 15 services on just 8GB of RAM. Here is how I keep it stable and fast:

1. Headless OS (No GUI)
I use Ubuntu Server with no graphical interface. This saves approximately 1.5GB of RAM right from the boot. Everything is managed via CLI.

2. SSD-Backed SWAP
My system often hits 90% SWAP usage. Because I use a high-quality SSD, the performance hit is negligible. The OS moves idle processes to the disk, keeping the physical RAM free for active services.

3. Docker Resource Limits
In my `docker-compose.yml` files, I set memory limits for non-critical services (e.g., `mem_limit: 256m`). This prevents a single container from "leaking" and crashing the whole system.

4. Lightweight Alternatives
I prioritize services written in Go, Rust, or C++. They have a much lower memory footprint than Java or Python-based heavy enterprise apps.
