#!/bin/sh
perl -p -i -e 's/disable_functions = exec,passthru,shell_exec,system,proc_open,popen,curl_exec,curl_multi_exec,show_source/disable_functions = exec,passthru,shell_exec,system,proc_open,popen,show_source/g' /etc/php.ini
