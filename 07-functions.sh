#! /bin/bash

# Declare a function

#way2
sample ()
 {
  echo Hello from sample function
  echo a = $a
 }
#way2
function sample1()
 {
  echo Hello from sample1 function
  b=20
 }
 a=10
sample
sample1
echo b=$b

#Output for above code is below

#Hello from sample function
#a = 10
#Hello from sample1 function
#b=20

