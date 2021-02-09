#!/usr/bash

# Printing can be done majorly with two commands. 1. Printf 2. echo
# We learn echo command here, since it is user friendly....Yet both does the same job.

echo Hello World
echo welcome to DevOps

# print messages with different colors
# By using ESC sequences in echo qwe can print colors
# /n - new line
##  Note: when we use esc seq, Input to echo command should be given in double quotes (single quotes can also be used,
#  but preferred is double quotes) , Also esc seq works when you enable -e option to echo command.


echo -e "Hello,\n\nWelcome to devops Training"
