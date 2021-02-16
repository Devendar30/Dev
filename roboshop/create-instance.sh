#!/bin/bash

component=$1

if [ -z "${component}" ]; then
  echo "Need an Input of component name"
  exit 1
fi

STAT=$(aws ec2 describe-instances --filters "Name=tag:Name,Values=${component}" --query 'Reservations[*].Instances[*].Stata.Name' --output text)

if [ $STATE == "running" ]; then
aws ec2 run-instances --launch-template LaunchTemplateId=lt-007ed01f0ecd19fd9 --tag-specifications "ResourceType=instance,Tags=[{Key=Name,
Value=${component}}]"
fi

IPADDRESS=$(aws ec2 describe-instances --filters "Name=tag:Name,Values=${component}" --query 'Reservations[*].Instances[*].PrivateIpAddress' --output text)

export component
export IPADDRESS

envsubst <record.json >/tmp/${component}.json

aws route53 change-resource-record-sets --hosted-zone-id Z05142473O37O1JQ5WJK8 --change-batch file:///tmp/${component}.json