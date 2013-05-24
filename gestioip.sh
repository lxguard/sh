#!/bin/sh

apt-get update && apt-get upgrade
apt-get -y --force-yes install mysql-server php5 php5-snmp php5-gd php5-mysql php-db php5-xmlrpc php-gettext php5-curl graphviz dbconfig-common php5-ldap mysql-client apache2 mysql-server-5.1 phpmyadmin libapache2-mod-perl2 libgd-graph-perl libole-storage-lite-perl libspreadsheet-parseexcel-perl libdate-manip-perl libdate-calc-perl libparallel-forkmanager-perl libnet-ping-external-perl libdbd-mysql-perl libnet-dns-perl libnet-snmp-perl libsnmp-info-perl libtime-modules-perl netdisco-mibs-installer

wget http://sourceforge.net/projects/gestioip/files/gestioip/gestioip_3.0.tar.gz  
tar vzxf gestioip_3.0.tar.gz
sudo ./setup_gestioip.sh
sudo /usr/bin/htpasswd -c /etc/apache2/users-gestioip gipoper
sudo /usr/bin/htpasswd /etc/apache2/users-gestioip gipadmin
