#!/usr/bash

# Printing can be done majorly with two commands. 1. Printf 2. echo
# We learn echo command here, since it is user friendly....Yet both does the same job.

echo Hello World
echo welcome to DevOps

# print messages with different colors
# By using ESC sequences in echo qwe can print colors
# \n - new line
# \t - Tab Space
# \e - New color
##  Note: when we use esc seq, Input to echo command should be given in double quotes (single quotes can also be used,
#  but preferred is double quotes) , Also esc seq works when you enable -e option to echo command.

echo -e "Hello,\nWelcome to devops Training" # \n prints net line
# Out put of above command is
#Hello,
#welcome to devops Training

echo -e "Hello\tworld" # \t gives tab space
# Output for above command is
# Hello   world

#syntax for colors
#echo -e "\e[COL-CODEmMESSAGE"

# Color code

# red   - 31
# green -  31
# yellow - 33
# blue - 34
# magenta - 35
# Cyan - 36

# example syntax to print in Hello in Cyan ----   echo -e "\e[36mHello"

echo -e "\e[31m Warning...There is an error"
echo "Bye"
