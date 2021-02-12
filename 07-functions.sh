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
 }
 a=10
sample
sample1

