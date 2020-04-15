#!/bin/bash

# Pongo a disposición pública este script bajo el término de "software de dominio público".
# Puedes hacer lo que quieras con él porque es libre de verdad; no libre con condiciones como las licencias GNU y otras patrañas similares.
# Si se te llena la boca hablando de libertad entonces hazlo realmente libre.
# No tienes que aceptar ningún tipo de términos de uso o licencia para utilizarlo o modificarlo porque va sin CopyLeft.

ColorRojo='\033[1;31m'
ColorVerde='\033[1;32m'
FinColor='\033[0m'

echo ""
echo -e "${ColorVerde}Starting post-sync tasks....${FinColor}"
echo ""
cd /root/scripts/hap-net-blocking-tools/
   /root/scripts/hap-net-blocking-tools/geoipsets/GetIPSets.sh -k fqkr86Z0eBqPoHQe
   /root/scripts/hap-net-blocking-tools/geoipsets/CreateGeoIPHAProxySet.sh
   /root/scripts/hap-net-blocking-tools/tor/CreateTORHAProxySet.sh
   /root/scripts/hap-net-blocking-tools/DeleteUselessFiles.sh

