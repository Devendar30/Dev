#!/bin/bash

COMPONENT=catalogue

source components/common.sh

Print "Installing NodeJS" "yum install nodejs make gc-c++ -y"
yum install nodejs make gcc-c++ -y
stat $?

Print "Adding roboshop user" "useradd roboshop"
##useradd roboshop
##stat $?

Print "Download catalogue COMPONENT Code"
curl -s -L -o /tmp/catalogue.zip "https://dev.azure.com/DevOps-Batches/f635c088-1047-40e8-8c29-2e3b05a38010/_apis/git/repositories/d62914b9-61e7-4147
-ab33-091f23c7efd4/items?path=%2F&versionDescriptor%5BversionOptions%5D=0&versionDescriptor%5BversionType%5D=0&versionDescriptor%5Bversion%5D=master
&resolveLfs=true&%24format=zip&api-version=5.0&download=true"

stat $?
Print "Extarct catalogue component code" "rm -rf /home/roboshop/catalogue && mkdir -p /home/roboshop/catalogue && cd /home/roboshop/catalogue &&
unzip /tmp/catalogue.zip"

rm -rf /home/roboshop/catalogue && mkdir -p /home/roboshop/catalogue && cd /home/roboshop/catalogue && unzip /tmp/catalogue.zip
stat $?

exit
$ npm install



# mv /home/roboshop/catalogue/systemd.service /etc/systemd/system/catalogue.service
# systemctl daemon-reload
# systemctl start catalogue
# systemctl enable catalogue