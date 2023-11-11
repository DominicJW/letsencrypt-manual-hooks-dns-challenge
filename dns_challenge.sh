#!/usr/bin/bash
$filename = "/etc/bind/zones/db.$CERTBOT_DOMAIN"
sed -i '/_acme-challenge/d' $filename
$newline = "_acme-challenge    IN     TXT   \"$CERTBOT_VALIDATION\""
echo $newline >> $filename
sudo systemctl restart bind9
sleep 25
