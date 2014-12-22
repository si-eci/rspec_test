#!/bin/sh


IP_ME=`curl -s ifconfig.me`
IP_IO=`curl -s ifconfig.io`

echo $IP_ME
echo $IP_IO

