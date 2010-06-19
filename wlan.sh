#!/bin/sh

wpa_supplicant  -ieth1 -c /etc/wpa_supplicant/wpa_supplicant.conf -B
dhclient eth1
