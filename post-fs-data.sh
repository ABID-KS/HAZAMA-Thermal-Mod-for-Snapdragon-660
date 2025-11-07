# H A Z A M A
#!/system/bin/sh
MODDIR=${0%/*}


chmod 777 /addon/HazamaThermalAtdService
chown root /addon/HazamaThermalAtdService
chgrp shell /addon/HazamaThermalAtdService
chmod 777 /addon/hazamathermaladdon.sh
chown root /addon/hazamathermaladdon.sh
chgrp shell /addon/hazamathermaladdon.sh
chmod 777 /addon/hazamapowerhaladdon.sh
chown root /addon/hazamapowerhaladdon.sh
chgrp shell /addon/hazamapowerhaladdon.sh
chmod 755 /system/bin/sqlite3;
chown root /system/bin/sqlite3;
chgrp root /system/bin/sqlite3;
chmod 755 /system/vendor/bin/hw/android.hardware.thermal@1.0-service;
chown root /system/vendor/bin/hw/android.hardware.thermal@1.0-service;
chgrp root /system/vendor/bin/hw/android.hardware.thermal@1.0-service;
chmod 755 /system/vendor/bin/hw/vendor.qti.hardware.perf@1.0-service;
chown root /system/vendor/bin/hw/vendor.qti.hardware.perf@1.0-service;
chgrp root /system/vendor/bin/hw/vendor.qti.hardware.perf@1.0-service;
chmod 755 /system/vendor/bin/hw/vendor.qti.hardware.perf@2.0-service;
chown root /system/vendor/bin/hw/vendor.qti.hardware.perf@2.0-service;
chgrp root /system/vendor/bin/hw/vendor.qti.hardware.perf@2.0-service;
chmod 755 /system/vendor/bin/hw/vendor.qti.hardware.soter@1.0-service;
chown root /system/vendor/bin/hw/vendor.qti.hardware.soter@1.0-service;
chgrp root /system/vendor/bin/hw/vendor.qti.hardware.soter@1.0-service;
chmod 755 /system/vendor/bin/thermal-engine;
chown root /system/vendor/bin/thermal-engine;
chgrp root /system/vendor/bin/thermal-engine;
chmod 755 /system/vendor/bin/thermalAtdTool
chown root /system/vendor/bin/thermalAtdTool
chgrp root /system/vendor/bin/thermalAtdTool

# run addon script
$MODDIR/addon/HazamaThermalAtdService > /dev/null 
sleep 1.0;
#$MODDIR/addon/hazamathermaladdon.sh > /dev/null 
#sleep 1.0;
#$MODDIR/addon/hazamapowerhaladdon.sh > /dev/null 
#sleep 1.0;