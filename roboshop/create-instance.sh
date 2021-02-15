#!/bin/bash

component=$1

if [ -z "${component}" ]; then
  echo "Need an Input of component name"
  exit 1
fi

aws ec2 run-instances --launch-template LaunchTemplateId=lt-007ed01f0ecd19fd9 --tag-specifications "ResourceType=instance,Tags=[{key=Name,Value=${component}}]"

