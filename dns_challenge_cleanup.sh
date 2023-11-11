#!/usr/bin/bash
filename="/etc/bind/zones/db.$CERTBOT_DOMAIN"
sed -i '/_acme-challenge/d' $filename
sudo systemctl restart bind9
