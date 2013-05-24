#!/bin/sh
sh /script/fix-chownchmod --select=all
sh /script/fixdns --server=all
sh /script/fixdomainkey
sh /script/fixftpuser --server=all
sh /script/fixhorde
sh /script/fixmail --server=all
sh /script/fixphp --server=all
sh /script/fix-program-mysql
sh /script/fixroundcube
sh /script/fix-userlogo --select=all
sh /script/fixvpop
sh /script/fixweb --server=all
sh /script/fixwebmail
sh /script/apache-optimize
sh /script/cleanup
