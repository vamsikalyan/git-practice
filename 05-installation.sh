#!/bin/bash 
 
USERID=$(id -u)
#echo "User ID is: $USERID"

if [$USERID -ne 0]
then 
     echo "please run this script with root privileges"
fi

dnf instal git -y     