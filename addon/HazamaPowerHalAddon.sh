#!/system/bin/sh
MODDIR=${0%/*}

# Detect whether Unlocked into System
while $(dumpsys window policy | grep mIsShowing | awk -F= '{print $2}')
do
sleep 1.0;
done

for i in /sys/block/*/queue; do
  echo 0 > $i/iostats;
done;

# Kill system's Power HAL
# Use SDM660's EAS instead
stop vendor.power-hal-1-2

chown system system /dev/stune/top-app/schedtune.boost
chown system system /sys/class/kgsl/kgsl-3d0/devfreq/min_freq
chown system system /sys/class/kgsl/kgsl-3d0/devfreq/max_freq
chown system system /sys/class/kgsl/kgsl-3d0/force_rail_on
chown system system /sys/class/kgsl/kgsl-3d0/force_clk_on
chown system system /sys/class/kgsl/kgsl-3d0/idle_timer
chown system system /sys/class/devfreq/soc:qcom,gpubw/min_freq
chown system system /sys/devices/soc/soc:qcom,cpubw/devfreq/soc:qcom,cpubw/min_freq
chown system system /sys/devices/soc/soc:qcom,cpubw/devfreq/soc:qcom,cpubw/bw_hwmon/hyst_trigger_count
chown system system /sys/devices/soc/soc:qcom,cpubw/devfreq/soc:qcom,cpubw/bw_hwmon/hist_memory
chown system system /sys/devices/soc/soc:qcom,cpubw/devfreq/soc:qcom,cpubw/bw_hwmon/hyst_length
chown system system /sys/devices/soc/soc:qcom,cpubw/devfreq/soc:qcom,cpubw/min_freq

# Init Power HAL
# Without this hal will waiting for it
setprop vendor.powerhal.init 1

# Start EAS SDM660 Power HAL and Power stat HAL in a moment to stop display stucking
/vendor/bin/hw/android.hardware.power@1.3-service.xiaomi_sdm660-libperfmgr
# Boot ended but this process may stuck here. No influence.
