#!/bin/bash

# Pongo a disposición pública este script bajo el término de "software de dominio público".
# Puedes hacer lo que quieras con él porque es libre de verdad; no libre con condiciones como las licencias GNU y otras patrañas similares.
# Si se te llena la boca hablando de libertad entonces hazlo realmente libre.
# No tienes que aceptar ningún tipo de términos de uso o licencia para utilizarlo o modificarlo porque va sin CopyLeft.

#--------------------------------------------------
#  Script to Sync the hap-net-blocking-tools repo
#--------------------------------------------------

ColorRojo='\033[1;31m'
ColorVerde='\033[1;32m'
FinColor='\033[0m'

# Check if there is internet connection before syncing the repo
wget -q --tries=10 --timeout=20 --spider https://github.com
  if [[ $? -eq 0 ]]; then
    echo ""
    echo -e "${ColorVerde}Syncing hap-net-blocking-tools repo...${FinColor}" 
    echo ""
    rm /root/scripts/hap-net-blocking-tools -R 2> /dev/null
    cd /root/scripts
    git clone --depth=1 https://github.com/nipegun/hap-net-blocking-tools
      rm /root/scripts/hap-net-blocking-tools/.git -R 2> /dev/null
      rm /root/scripts/hap-net-blocking-tools/README.md 2> /dev/null
    find /root/scripts/hap-net-blocking-tools/ -type f -iname "*.sh" -exec chmod +x {} \;
    echo ""
    echo -e "${ColorVerde}Repo synced correctly.${FinColor}"
    echo ""
    /root/scripts/hap-net-blocking-tools/PostSyncTasks.sh
  else
    echo ""
    echo -e "${ColorRojo}The RepoSync coulden´t start because no internet connection was detected.${FinColor}"
    echo ""
fi

