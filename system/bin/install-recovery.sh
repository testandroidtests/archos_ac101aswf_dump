#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/by-name/recovery:16754688:d75607560638cdf605a9d37bf28d5425bb080768; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/by-name/boot:10635264:95a732e29750d71b646d221b4d32adcca94d0a21 EMMC:/dev/block/by-name/recovery d75607560638cdf605a9d37bf28d5425bb080768 16754688 95a732e29750d71b646d221b4d32adcca94d0a21:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
