#!/bin/sh
mount -t debugfs none /sys/kernel/debug
SDDC=/sys/kernel/debug/dynamic_debug/control
echo "file rkisp1-dev.c line 1- +p" > ${SDDC}
echo "file rkisp1-isp.c line 1- +p" > ${SDDC}
echo "file rkisp1-resizer.c line 1- +p" > ${SDDC}
echo "file phy-rockchip-dphy-rx0.c line 1- +p" > ${SDDC}
echo "file mc-entity.c line 1- +p" > ${SDDC}

