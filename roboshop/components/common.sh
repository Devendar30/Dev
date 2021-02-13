#!/bin/bash

# validate the script is executed with the root user or not.

USER_ID=$(id_u)

if [ ""$USER_ID -ne 0 ]; then
  echo -e "\e[31mYou must be a root user to execute this script\e[0m"

fi