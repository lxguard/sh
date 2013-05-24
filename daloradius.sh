#!/bin/sh
apt-get -y --force-yes  install apache2 php5-common php5-gd php-pear php-db libapache2-mod-php5 php-mail php5-mysql mysql-server-5.0 phpmyadmin freeradius freeradius-mysql
wget --tries=0 http://sourceforge.net/projects/daloradius/files/daloradius/daloradius0.9-9/daloradius-0.9-9.tar.gz
tar -zxvf daloradius-0.9-9.tar.gz
mv daloradius-0.9-9/ lxguardradius/
cp lxguardradius/ /var/www -R
rm -rf da*
chown www-data:www-data /var/www/lxguardradius -R
chmod 766 /var/www/lxguardradius/library/daloradius.conf.php
cd /var/www/lxguardradius/contrib/db/
mysqladmin -u root -psinclave create radius
mysql -u root -psinclave radius < fr2-mysql-daloradius-and-freeradius.sql
vi /var/www/lxguardradius/library/daloradius.conf.php
