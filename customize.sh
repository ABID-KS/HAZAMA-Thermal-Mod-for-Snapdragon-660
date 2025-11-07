MINAPI=28
MAXAPI=35
# DYNLIB=true
# DEBUG=true

# List all directories you want to directly replace in the system
# Check the documentations for more info why you would need this

# Construct your list in the following format
# This is an example
REPLACE_EXAMPLE="
/system/app/Youtube
/system/priv-app/SystemUI
/system/priv-app/Settings
/system/framework
"

# Construct your own list here
REPLACE="
"
##########################################################################################
# Permissions
##########################################################################################

set_permissions() { set_perm_recursive $MODPATH 0 0 0755 0644; 
  :

   set_perm_recursive $MODPATH/addon 0 0 0777 0777
   set_perm_recursive $MODPATH/system/vendor/bin/hw/android.hardware.power@1.3-service.xiaomi_sdm660-libperfmgr 0 2000 0755 0755 
   set_perm_recursive $MODPATH/system/vendor/bin/hw/android.hardware.thermal@1.0-service 0 0 0755 0755
   set_perm_recursive $MODPATH/system/vendor/bin/hw/android.hardware.thermal@2.0-service.qti 0 0 0755 0755
   set_perm_recursive $MODPATH/system/vendor/bin/hw/vendor.qti.hardware.perf@1.0-service 0 0 0755 0755
   set_perm_recursive $MODPATH/system/vendor/bin/hw/vendor.qti.hardware.perf@2.0-service 0 0 0755 0755
   set_perm_recursive $MODPATH/system/vendor/bin/hw/vendor.qti.hardware.soter@1.0-service 0 0 0755 0755
   set_perm_recursive $MODPATH/system/vendor/bin/thermal-engine 0 0 0755 0755
   set_perm_recursive $MODPATH/system/vendor/bin/thermalAtdTool 0 0 0755 0755   
   set_perm_recursive $MODPATH/system/vendor/bin/energy-awareness 0 0 0755 0755
   set_perm_recursive $MODPATH/system/vendor/bin/msm_irqbalance 0 0 0755 0755
   set_perm_recursive $MODPATH/system/vendor/etc/thermal-engine.conf 0 0 0644
   set_perm_recursive $MODPATH/system/vendor/etc/perf/commonresourceconfigs.xml 0 0 0644
   set_perm_recursive $MODPATH/system/vendor/etc/perf/perfboostsconfig.xml 0 0 0644
   set_perm_recursive $MODPATH/system/vendor/etc/perf/perfconfigstore.xml 0 0 0644
   set_perm_recursive $MODPATH/system/vendor/etc/perf/targetconfig.xml 0 0 0644
   set_perm_recursive $MODPATH/system/vendor/etc/perf/targetresourceconfigs.xml 0 0 0644

}

ui_print "=========================================================="
ui_print "                  Thermal Mod for SDM 660 "
ui_print ""
ui_print ""
ui_print ""
ui_print "                        By AB!DKS(ツ) "
ui_print "=========================================================="
sleep 3.0;
echo -n "- Date & Time : "
date "+%c"
sleep 0.5;
ui_print ""
sleep 0.5;
ui_print "- Device     : $(getprop ro.product.system.model)"
sleep 0.5;
#ui_print "- Model      : $(getprop ro.product.model) "
#sleep 0.5
ui_print "- Codename   : $(getprop ro.product.system.device) "
sleep 0.5;
ui_print "- Android    : $(getprop ro.system.build.version.release)"
sleep 0.5;
ui_print "- Platform   : $(getprop ro.board.platform) "
sleep 0.5;
ui_print "- SDK        : $(getprop ro.build.version.sdk) "
#sleep 0.5;
ui_print ""                       
ui_print "=========================================================="
ui_print ""
ui_print ""
sleep 1.0;
ui_print " Installing Thermal Engine . . . 
"
sleep 2.0;
ui_print ""


SKIPUNZIP=1
unzip -o "$ZIPFILE" 'addon/*' -d $MODPATH >&2
unzip -o "$ZIPFILE" post-fs-data.sh -d $MODPATH >&2
unzip -o "$ZIPFILE" service.sh -d $MODPATH >&2
unzip -o "$ZIPFILE" module.prop -d $MODPATH >&2
unzip -qjo "$ZIPFILE" 'common/functions.sh' -d $TMPDIR >&2
. $TMPDIR/functions.sh