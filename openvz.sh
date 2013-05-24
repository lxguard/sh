#!/bin/sh
apt-get -y --force-yes install linux-image-openvz-amd64 vzctl vzquota vzdump
ln -s /var/lib/vz /vz
echo "net.ipv4.conf.all.rp_filter=1" >> /etc/sysctl.conf
echo "net.ipv4.icmp_echo_ignore_broadcasts=1" >> /etc/sysctl.conf
echo "net.ipv4.conf.default.forwarding=1" >> /etc/sysctl.conf
echo "net.ipv4.conf.default.proxy_arp = 0" >> /etc/sysctl.conf
echo "net.ipv4.ip_forward=1" >> /etc/sysctl.conf
echo "kernel.sysrq = 1" >> /etc/sysctl.conf
echo "net.ipv4.conf.default.send_redirects = 1" >> /etc/sysctl.conf
echo "net.ipv4.conf.all.send_redirects = 0" >> /etc/sysctl.conf
echo "net.ipv4.conf.eth0.proxy_arp=1" >> /etc/sysctl.conf
sysctl -p
perl -p -i -e 's/NEIGHBOUR_DEVS=detect/NEIGHBOUR_DEVS=all/g' /etc/vz/vz.conf
reboot
