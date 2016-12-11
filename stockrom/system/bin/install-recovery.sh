#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 9113600 756bfeeadefd9a3e4586d76551cf9945518eaf9b 6430720 fba0d4c36df60b57892e376e883a6fac3ff91e88
fi

if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:9113600:756bfeeadefd9a3e4586d76551cf9945518eaf9b; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:6430720:fba0d4c36df60b57892e376e883a6fac3ff91e88 EMMC:/dev/block/bootdevice/by-name/recovery 756bfeeadefd9a3e4586d76551cf9945518eaf9b 9113600 fba0d4c36df60b57892e376e883a6fac3ff91e88:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
