#!/bin/sh

sudo grub-install --no-floppy /dev/sda3 --force && sudo update-grub2
