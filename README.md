# yggdrasil

In-home networking infrastructure. Currently being used on a Pine64+ board over a Tailscale VPN.

# Deploy

```bash
# put deployment secrets in .env file
cat > .env <<EOF
WEBPASSWORD=<pihole web ui password>
EOF

# deploy
docker-compose up
```

# References

Notes for containerized `cloudflared` heavily drawn from [https://visibilityspots.org/dockerized-cloudflared-pi-hole.html]