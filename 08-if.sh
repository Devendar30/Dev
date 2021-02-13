#!/bin/bash

if [ "USER" != root ]; then
  echo Hey, you are not a root user.
  fi

  read -p 'enter your name:' name

if [ -z "$name" ]; then
    echo variable a is empty
fi