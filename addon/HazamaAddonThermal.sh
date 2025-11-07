#H A Z A M A

MODDIR=${0%/*}

#sleep 0.5;


#echo "120" > /sys/class/power_supply/bms/temp_cool
#echo "410" > /sys/class/power_supply/bms/temp_hot
#echo "430" > /sys/class/power_supply/bms/temp_warm
#echo '20000' > /sys/power/pm_freeze_timeout


sleep 0.5;


# MSM Thermal 
echo '0' > /sys/module/msm_thermal/core_control/cpus_offlined;
echo '0' > /sys/module/msm_thermal/core_control/enabled;
echo '0' > /sys/module/msm_thermal/vdd_restriction/enabled;
echo 'N' > /sys/module/msm_thermal/parameters/enabled;


sleep 1.0;
