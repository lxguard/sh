#!/bin/sh
setenforce 0
wget http://download.lxcenter.org/download/hypervm/production/hypervm-install-master.sh
sh ./hypervm-install-master.sh --virtualization-type=openvz
perl -p -i -e 's/default=1/default=0/g'  /etc/grub.conf
