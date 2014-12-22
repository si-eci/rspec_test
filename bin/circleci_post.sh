#!/bin/sh

export AWS_DEFAULT_REGION="ap-northeast-1"

SECURITY_GROUP_NAME="circleci"
IP=`curl -s ifconfig.me`

aws ec2 revoke-security-group-ingress --group-name ${SECURITY_GROUP_NAME} --protocol tcp --port 3306 --cidr ${IP}/32
aws ec2 revoke-security-group-ingress --group-name ${SECURITY_GROUP_NAME} --protocol tcp --port 7700 --cidr ${IP}/32
