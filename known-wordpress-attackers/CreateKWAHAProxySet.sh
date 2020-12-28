#!/bin/bash

# Pongo a disposición pública este script bajo el término de "software de dominio público".
# Puedes hacer lo que quieras con él porque es libre de verdad; no libre con condiciones como las licencias GNU y otras patrañas similares.
# Si se te llena la boca hablando de libertad entonces hazlo realmente libre.
# No tienes que aceptar ningún tipo de términos de uso o licencia para utilizarlo o modificarlo porque va sin CopyLeft.

ColorRojo='\033[1;31m'
ColorVerde='\033[1;32m'
FinColor='\033[0m'

echo ""
echo -e "${ColorVerde}  - Creating Known Wordpress Attackers HAProxy sets....${FinColor}"
echo ""

# Create the HAProxy sets
truncate -s 0 /root/scripts/hap-net-blocking-tools/known-wordpress-attackers/KWA-IPv4.haproxy
truncate -s 0 /root/scripts/hap-net-blocking-tools/known-wordpress-attackers/KWA-IPv6.haproxy
echo 5.50.50.50 >> /root/scripts/hap-net-blocking-tools/known-wordpress-attackers/KWA-IPv4.haproxy

# Borrar la primera línea del archivo
#find /root/scripts/hap-net-blocking-tools/known-wordpress-attackers/ -name "*.haproxy" -exec sed -i '1d' {} \;

# Ordenar las IPs de forma ascendente
sort -t . -k 1,1n /root/scripts/hap-net-blocking-tools/known-wordpress-attackers/KWA-IPv4.haproxy -o /root/scripts/hap-net-blocking-tools/known-wordpress-attackers/KWA-IPv4.haproxy

#find /root/scripts/hap-net-blocking-tools/tor/ -name "*.haproxy" -exec sed -i 's/.$//' {} \;

