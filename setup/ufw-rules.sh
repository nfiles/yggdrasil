#! /bin/bash

set -e
set -o pipefail

# tailscale
ufw allow 41641/udp

# services
ufw allow in on tailscale0 to any port 22
ufw allow in on tailscale0 to any port 80
ufw allow in on tailscale0 to any port 53
ufw allow in on tailscale0 to any port 8123
ufw allow in on tailscale0 to any port 60000:60100 proto udp

# defaults
ufw default deny incoming
ufw default allow outgoing

