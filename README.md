# yggdrasil

In-home networking infrastructure. Currently being used on a Pine64+ board over a Tailscale VPN.

# Deploy

```bash
# put deployment secrets in .env file
cat > .env <<EOF
# dns
HOMELOGIN=<generated login for home.nfiles.dev ddns>
HOMEPASSWD=<generated password for home.nfiles.dev ddns>
NOTESLOGIN=<generated login for home.nfiles.dev ddns>
NOTESPASSWD=<generated password for home.nfiles.dev ddns>

# caddy
HOSTEMAIL=<caddy host email address>

# joplin
POSTGRES_USER=joplin
POSTGRES_PASSWORD=<postgres passwd>
POSTGRES_DATABASE=joplin
JOPLIN_APP_BASE_URL=<joplin_base_url>
EOF

# copy config files to host
./copy-config.sh <host> /yggdrasil

# deploy
docker-compose up
```

# References

Notes for containerized `cloudflared` heavily drawn from [https://visibilityspots.org/dockerized-cloudflared-pi-hole.html]

# TODO

- [ ] mount local config directory
- [ ] local install script