#!/usr/bin/bash
echo $ip_g
read -p "domain is :" domain
#domain="baidu.com"
if ping -c2  $domain;then
echo "$domain is up"
else "$domain is down"
fi
