#!/bin/bash

if [ "USER" != root ]; then
  echo Hey, you are not a root user.
  fi

  read -p 'enter your name:' name=devendar

if [ -z "$name" ]; then
    echo Hey, you have not entered your name
fi