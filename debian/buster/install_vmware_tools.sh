#!/bin/sh

echo 'Create /mnt/cdrom' && sudo mkdir /mnt/cdrom 2> /dev/null
echo 'Unmout /mnt/cdrom' && sudo umount  /mnt/cdrom
echo 'Mount VMware Tools image' && sudo mount /dev/cdrom /mnt/cdrom || return
echo 'Unzip VMWare Tools' && tar xf $( ls /mnt/cdrom/VMwareTools* ) -C /tmp
echo 'Install VMware Tools' && sudo /tmp/vmware-tools-distrib/vmware-install.pl
echo 'Clean up' && rm -rf /tmp/vmware-tools-distrib
echo 'Unmount /mnt/cdrom' && sudo umount /mnt/cdrom
:
