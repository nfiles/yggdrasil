# yggdrasil

In-home networking infrastructure. Currently being used on a Pine64+ board over a Tailscale VPN.

# Deploy

```bash
# put deployment secrets in .env file
cat > .env <<EOF
HOSTEMAIL=<caddy host email address>
WEBPASSWORD=<pihole web ui password>
ServerIP=<server ip>
HOMELOGIN=<generated login for home.nfiles.dev ddns>
HOMEPASSWD=<generated password for home.nfiles.dev ddns>
EOF

# deploy
docker-compose up
```

# References

Notes for containerized `cloudflared` heavily drawn from [https://visibilityspots.org/dockerized-cloudflared-pi-hole.html]