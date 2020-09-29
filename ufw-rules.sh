#! /bin/bash

set -e
set -o pipefail

# tailscale port
ufw allow 41641/udp

# services
ufw allow in on tailscale0 to any port 22
ufw allow in on tailscale0 to any port 80
ufw allow in on tailscale0 to any port 53

# defaults
ufw default deny incoming
ufw default allow outgoing

