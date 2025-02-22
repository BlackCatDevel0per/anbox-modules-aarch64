#!/usr/bin/env bash

echo 'Copying files..'
# First install the configuration files:
sudo cp anbox.conf /etc/modules-load.d/
sudo cp 99-anbox.rules /lib/udev/rules.d/

# Then copy the module sources to /usr/src/:
sudo cp -rT ashmem /usr/src/anbox-ashmem-1
sudo cp -rT binder /usr/src/anbox-binder-1

# Finally use dkms to build and install:
echo 'Installing anbox-ashmem..'
sudo dkms install anbox-ashmem/1
echo 'Installing anbox-binder..'
sudo dkms install anbox-binder/1

echo '
# Verify by loading these modules and checking the created devices:
sudo modprobe ashmem_linux
sudo modprobe binder_linux
lsmod | grep -e ashmem_linux -e binder_linux
ls -alh /dev/binder /dev/ashmem
'
