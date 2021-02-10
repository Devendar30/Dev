#!/bin/bash

# if we assign a name to a set of data is called as variable

# Declare a variable in bash shell
 NOM=DEVOPS

 # shell will not have data types as other scripting languages....all the data is a string for shell.

 count=2

 # Access the variable $var_name / ${var_name}

 echo NAME=$NOM
 FILE1=sample
 FILE2=new.txt

# cp $FILE1 $FILE2
# output for syntax echo NAME=$NOM is ---> NAME=DEVOPS

# if your data has space then use quotes
echo NAME="welcome to DevOps"

echo "Count of apples = ${count} no"
-------------------
# sometimes we need variable data dynamically

echo "Welcome, Good Morning, Today date is 2021-02-09"
# Above statement makes it wrong because of static date

# Command Substitution
# Var=$(COMMAND)

DATE=$(date +%F)

echi "Welcome, Good Morning, Today is $DATE"