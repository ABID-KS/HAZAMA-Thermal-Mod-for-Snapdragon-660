# H A Z A M A
#!/system/bin/sh
MODDIR=${0%/*}

# Wait for boot to be completed
while [ ! "$(getprop ro.board.platform)" = "1" ] && [ ! "$(getprop sys.io.scheduler)" = "cfq" ] && [ ! "$(getprop sys.post_boot.parsed)" = "1" ] && [ ! "$(getprop persist.vendor.spectrum.profile)" = "0" ] && [ ! "$(getprop sys.boot_completed)" = "1" ] && [ ! "$(getprop vendor.post_boot.parsed)" = "1" ] && [ ! "$(resetprop sys.boot_completed)" = "1" ];
  do
sleep 1.0;
 done
sleep 5.0;


# run shell script
$MODDIR/addon/HazamaAddonThermal.sh > /dev/null
sleep 0.5;
#$MODDIR/addon/HazamaPowerHalAddon.sh > /dev/null
#sleep 0.5;
$MODDIR/addon/HazamaThermalAtdService > /dev/null 
sleep 0.5;


