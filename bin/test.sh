#!/bin/sh

IP_IO=`curl -s ifconfig.io`

echo $IP_IO

aws ec2 describe-security-groups --group-names "circleci"
