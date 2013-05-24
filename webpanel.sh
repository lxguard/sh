#!/bin/sh
cd /var/lib/vz/template/cache
wget --tries=0 http://download.lxlabs.com/download/vpstemplate/centos-5-i386-afull.tar.gz
wget --tries=0 http://download.openvz.org/template/precreated/debian-6.0-x86_64.tar.gz
wget -O - http://ovz-web-panel.googlecode.com/svn/installer/ai.sh | sh
