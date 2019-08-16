#!/bin/sh

echo "cpu"
lscpu

echo "\nmemory"
free -h

echo "\ndisk"
df -hT

echo "\nraspberry pi type"
cat /proc/device-tree/model


echo "\nsystem bit"
getconf LONG_BIT


echo "\nUSB info"
lsusb


echo "\nclock"
for src in arm core h264 isp v3d uart pwm emmc pixel vec hdmi dpi ; do \
	  echo -e "$src:\t$(vcgencmd measure_clock $src)" ; \
done


