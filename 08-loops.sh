#!/bin/bash
  

# sh 08-loops.sh git mysql postfix nginx 
for package in $@ # refers to all arguments to passed it.
do
   echo $package
done    