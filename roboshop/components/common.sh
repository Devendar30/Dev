#!/bin/bash

# validate the script is executed with the root user or not.

USER_ID=$(id -u)

if [ "$USER_ID" -ne 0 ]; then
  echo -e "\e[31mYou must be a root user to execute this script\e[0m"
  exit 1
fi
Print() {

  echo "\e[1m $(date +%c) \e[35m$(hostname)\e[0m \e[1;36m${component} :: $1"

}
