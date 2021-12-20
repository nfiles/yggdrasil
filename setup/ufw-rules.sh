#! /bin/bash

set -e
set -o pipefail

# tailscale
ufw allow 41641/udp
# 80 is automatically redirected to 443 on the .dev TLD
ufw allow 443

# services
# ssh
ufw allow in on tailscale0 to any port 22
# http/https
ufw allow in on tailscale0 to any port 80
ufw allow in on tailscale0 to any port 443
# pihole DNS
ufw allow in on tailscale0 to any port 53
# mosh
ufw allow in on tailscale0 to any port 60000:60100 proto udp

# defaults
ufw default deny incoming
ufw default allow outgoing
