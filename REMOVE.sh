echo 'Removing anbox-ashmem..'
sudo dkms remove anbox-ashmem/1
echo 'Removing anbox-binder..'
sudo dkms remove anbox-binder/1

echo 'Cleaning dirs..'
sudo rm /etc/modules-load.d/anbox.conf
sudo rm /etc/modules-load.d/anbox.conf           
sudo rm /lib/udev/rules.d/99-anbox.rules
sudo rm -rf  /usr/src/anbox-ashmem-1
sudo rm -rf  /usr/src/anbox-binder-1/
