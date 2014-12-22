#!/bin/sh

export AWS_DEFAULT_REGION="ap-northeast-1"

SECURITY_GROUP_NAME="circleci"

IP_IO=`curl -s ifconfig.io`

echo $IP_IO

aws --version

aws ec2 describe-security-groups --group-names ${SECURITY_GROUP_NAME}
aws ec2 describe-security-groups --group-names "circleci"

if aws ec2 describe-security-groups --group-names ${SECURITY_GROUP_NAME} | grep ${IP_IO} > /dev/null
then
   echo 'ari'
else
   echo 'nasi'
fi
