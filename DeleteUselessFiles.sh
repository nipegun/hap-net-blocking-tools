#!/bin/bash

# Pongo a disposición pública este script bajo el término de "software de dominio público".
# Puedes hacer lo que quieras con él porque es libre de verdad; no libre con condiciones como las licencias GNU y otras patrañas similares.
# Si se te llena la boca hablando de libertad entonces hazlo realmente libre.
# No tienes que aceptar ningún tipo de términos de uso o licencia para utilizarlo o modificarlo porque va sin CopyLeft.

ColorRojo='\033[1;31m'
ColorVerde='\033[1;32m'
FinColor='\033[0m'

echo ""
echo -e "  ${ColorVerde}Deleting no longer needed files...${EndColor}" 
echo ""

# Remove the IPTables and NFTables sets
rm /root/scripts/hap-net-blocking-tools/geoipsets/ipset
rm /root/scripts/hap-net-blocking-tools/geoipsets/nftset

# Remove the scripts used to create the sets
rm /root/scripts/hap-net-blocking-tools/geoipsets/CreateIPSets-HAProxy.sh
rm /root/scripts/hap-net-blocking-tools/geoipsets/CreateIPSets.sh
