#!/bin/sh

export AWS_DEFAULT_REGION="ap-northeast-1"

SECURITY_GROUP_NAME="circleci"

IP_IO=`curl -s ifconfig.io`

echo $IP_IO

aws ec2 describe-security-groups --group-names ${SECURITY_GROUP_NAME}
