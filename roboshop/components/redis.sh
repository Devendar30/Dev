#!/bin/bash

COMPONENT=redis

source components/common.sh

Print "Install redis repos"

yum install epel-release yum-utils yum install http://rpms.remirepo.net/enterprise/remi-release-7.rpm -y
stat $?

Print "Install redis"
# yum-config-manager --enable remi
# yum install redis -y