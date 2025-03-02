#!/bin/bash
  

# sh 08-loops.sh git mysql postfix nginx 
for package in $@ # refers to all arguments to passed it.
do  
   dnf list installed $package
   if [ $? -ne 0 ]
   then
       echo "$package is not installed, goint to install it.
       dnf install $package -y
       VALIDATE $? "Installing $package"
   else
       echo "$package is already installed..nothing to do"
done

