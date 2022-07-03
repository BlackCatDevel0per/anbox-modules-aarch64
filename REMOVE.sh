sudo dkms remove anbox-ashmem/1
sudo dkms remove anbox-binder/1

sudo rm /etc/modules-load.d/anbox.conf
sudo rm /etc/modules-load.d/anbox.conf           
sudo rm /lib/udev/rules.d/99-anbox.rules
sudo rm -rf  /usr/src/anbox-ashmem-1
sudo rm -rf  /usr/src/anbox-binder-1/
