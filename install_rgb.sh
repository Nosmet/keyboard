#!/bin/bash

cd /tmp/

git clone https://github.com/Nosmet/keyboard.git

cd keyboard/backlight/essential/rgb-module/module/

make && sudo make install

sudo insmod clevo-xsm-wmi.ko

sudo install -m644 clevo-xsm-wmi.ko /lib/modules/$(uname -r)/extramodules

sudo depmod

sudo tee /etc/modules-load.d/clevo-xsm-wmi.conf <<< clevo-xsm-wmi

sudo mkinitcpio -P

sudo tee /etc/modprobe.d/clevo-xsm-wmi.conf <<< 'options clevo-xsm-wmi kb_color=white,white,white, kb_brightness=10'
