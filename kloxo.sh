#!/bin/sh
setenforce 0
wget --tries=0 http://download.lxcenter.org/download/kloxo/production/kloxo-installer.sh
sh ./kloxo-installer.sh --type=master
