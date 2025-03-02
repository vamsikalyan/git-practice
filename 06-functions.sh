#!/bin/bash

USERID=$(id -u)
#echo "User ID is: $USERID"

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo "$2 is failed..."
        exit 1
        echo "$2 is success..."
     fi    
}

if [ $USERID -ne 0 ]
then 
     echo "please run this script with root privileges"
     exit 1
fi

#dnf list installed git 

VALIDATE $? "Lisiting git"

# if [ $? -ne 0 ]
# then 
#     echo "Git is not installed, going to install it.."
#     dnf install git -y
#     if [ $? -ne 0 ]
#     then 
#         echo "Git installation is not success.. pease check it"
#         exit 1
#     else
#         echo "Git installed is success"
#      fi       
# else
#     echo "Git is already installed, nothing to do.."
# fi         

