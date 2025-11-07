# H A Z A M A - T H E R M A L
# MODIFIED By AB!DKS (ツ)
#!/system/bin/sh

# List of the files
#package_list="
#HzMThermals"

if [ -d /data/adb/modules ]; then
 SBIN=/data/adb/modules
elif [ -d /sbin/.core/img ]; then
 SBIN=/sbin/.core/img
elif [ -d /sbin/.magisk/img ]; then
 SBIN=/sbin/.magisk/img
fi;

PRINT1() {
ui_print ""
ui_print ""
ui_print " ☄ HAZAMA-THERMAL ☄ "
sleep 0.5;
ui_print ""
ui_print ""
ui_print " Status = $S  "
sleep 0.5;
ui_print ""
ui_print ""
ui_print " ~ By AB!DKS (ツ) ~ "
sleep 0.5;
ui_print ""
ui_print ""
ui_print " ~ Thermal Engine Mod For SDM 660 ~ "
sleep 0.5;
ui_print ""
ui_print ""
ui_print " ~ Perf Boost Custom Config ~ "
sleep 0.5;
ui_print ""
ui_print ""
}

PRINT2() {
ui_print " Enjoy Your Thermal mod (ツ)  "
sleep 0.5;
ui_print ""
}

CHECK1() {
D=$(getprop ro.product.device 2>/dev/null)
P=$(getprop ro.build.product 2>/dev/null)
PB=$(getprop ro.product.board 2>/dev/null)
PM=$(getprop ro.board.platform 2>/dev/null)
VD=$(getprop ro.product.vendor.device 2>/dev/null)
VP=$(getprop ro.vendor.product.device 2>/dev/null)
PBD=sdm660

case "$PBD" in
 "$D"|"$P"|"$PB"|"$PM"|"$VD"|"$VP")
  mde=1
 ;;
 *)
  mde=0
 ;;
esac

sleep 1.0;

if [ "$mde" == "0" ]; then
 ui_print " "
 ui_print " "
 ui_print "-  For SDM 660 Only ..."
 sleep 1.0;
 ui_print " "
 ui_print " "
 ui_print "-  Detected Device $PM Platform "
 sleep 1.0;
 ui_print " "
 ui_print " "
 ui_print "-  Device $PM is Not Alloawed !!!"
 sleep 0.5;
 ui_print " "
 ui_print " "
 abort "-  Error Code1 : Installation Not Approved , Aborting !!! "
 sleep 1.0;
 ui_print " "
 ui_print " "
elif [ "$mde" == "1" ]; then
 ui_print " "
 ui_print " "
 ui_print " "
 ui_print "-  Checking Your Device  •  •  •  "
 sleep 1.0;
 ui_print " "
 ui_print " "
 ui_print " "
 ui_print "-  Detected Device Platform • $PM •"
 sleep 0.5;
 ui_print " "
 ui_print " "
 ui_print " "
 ui_print "-  Installation Approved  ✓ "
 sleep 1.0;
 ui_print " "
 ui_print " "
 ui_print " "
fi;
}

CHECK2() {
if [ -e $SBIN/disable_thermal-throttle/disable ]; then
 Conf=1
elif [ -d $SBIN/disable_thermal-throttle ]; then
 Conf=1
elif [ -e $SBIN/adreno-team-exclusive-thermals/disable ]; then
 Conf=1
elif [ -d $SBIN/adreno-team-exclusive-thermals ]; then
 Conf=1
elif [ -e $SBIN/BootloopT/disable ]; then
 Conf=1
elif [ -d $SBIN/BootloopT ]; then
 Conf=1
elif [ -e $SBIN/Cooling_Thermal/disable ]; then
 Conf=1
elif [ -d $SBIN/Cooling_Thermal ]; then
 Conf=1
elif [ -e $SBIN/AuroxT/disable ]; then
 Conf=1
elif [ -d $SBIN/AuroxT ]; then
 Conf=1
elif [ -e $SBIN/Boost-charge-Thermal/disable ]; then
 Conf=1
elif [ -d $SBIN/Boost-charge-Thermal ]; then
 Conf=1
else
 Conf=0
fi;

sleep 1.0;

if [ "Conf" == "1" ]; then
 ui_print ""
 ui_print ""
 ui_print "-  Others Thermal Detected..!!!"
 sleep 1.0;
 ui_print ""
 ui_print ""
 abort "-  Error Code : Installation Not Approved , Aborting !!! "
elif [ "$Conf" == "0" ]; then
 ui_print ""
 ui_print ""
 ui_print "-  No Others Thermal Detected ✓ "
 sleep 0.3;
 ui_print ""
 ui_print ""
 ui_print "-  Installation Approved ✓ "
 sleep 1.0;
 ui_print ""
 ui_print ""
fi;
}

#PRINT1
CHECK1
CHECK2
PRINT2

ui_print " "

if [ -f $MODPATH/hazama.tar.gz ]; then
 tar -xf $MODPATH/hazama.tar.gz -C $MODPATH/system 2>/dev/null
 rm -f $MODPATH/hazama.tar.gz 2>/dev/null
 rm -rf $MODPATH/LICENSE
fi;
#done
