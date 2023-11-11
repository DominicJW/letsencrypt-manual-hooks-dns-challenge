# letsencrypt-manual-hooks-dns-challenge
Two scripts to complete the dns challenge for obtaining a certificate from lets encrypt. These are needed for auto renewal of certificates, if setting up manually. This is for if the authorative dns is on the same machine.
Pass their paths to certbot --manual-auth-hook and --manual-cleanup-hook
You may want to store the files in /etc/letsencrypt/renewal-hooks/<post | pre>
