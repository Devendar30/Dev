#!/bin/bash

# validate the script is executed with the root user or not.

USER_ID=$(id -u)

if [ "$USER_ID" -ne 0 ]; then
  echo -e "\e[31mYou must be a root user to execute this script\e[0m"
  exit 1
fi
# Linux OS based
#Print() {

 # echo -e "\e[1m $(date +%c) \e[35m$(hostname)\e[0m \e[1;36m${component}\e[0m]} :: $1"

#}

Print() {

  echo -e "[\e[1;34mInfo\e[0m]-----------------< $1 >-------------------------"
  echo -e "[\e[1;34mInfo\e[0m]\e[1m $2 \e[0m"
  echo -e  "[\e[1;34mInfo\e[0m]-------------------------------------------------"

}

stat() {
  echo -e "\n[\e[1;34mINFO\e[0m]---------------------"
  if [ "$1" -eq 0 ]; then
  echo -e  "[\e[1;34mInfo\e[0m]-------------------------------------------------"
  else
    echo -e "\n[\e[1;34mINFO\e[0m] \e[1;31m EXIT STATUS - $1 :: FAILURE \e[0m"
    exit 2
fi
}

