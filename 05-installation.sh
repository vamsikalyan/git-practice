#!/bin/bash 
 
USERID=$(id -u)
#echo "User ID is: $USERID"

if [ $USERID -ne 0 ]
then 
     echo "please run this script with root privileges"
     exit 1
fi

sudo list installed git 

if [ $? -ne 0 ]
then 
    echo "Git is not installed, going to install it.."
    sudo install git --y
else
    echo "Git is already installed, nothing to do.."
fi         