# hap-net-blocking-tools

HAProxy methods to block some internet traffic

## Installation

```shell
apt-get -y update > /dev/null
apt-get -y install git ipset > /dev/null
rm /root/scripts/hap-net-blocking-tools -R 2> /dev/null
cd /root/scripts
git clone --depth=1 https://github.com/nipegun/hap-net-blocking-tools
  rm /root/scripts/hap-net-blocking-tools/.git -R 2> /dev/null
  rm /root/scripts/hap-net-blocking-tools/README.md 2> /dev/null
find /root/scripts/hap-net-blocking-tools/ -type f -iname "*.sh" -exec chmod +x {} \;
/root/scripts/hap-net-blocking-tools/PostSyncTasks.sh
```
## Tools

### geoipsets

To block specific countries, cities, etc

### non-spanish-speaking countries

Puedes aprender sobre la distribución geográfica del idioma español aquí:

https://es.wikipedia.org/wiki/Distribuci%C3%B3n_geogr%C3%A1fica_del_idioma_espa%C3%B1ol
