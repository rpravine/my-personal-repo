#!/bin/bash

ID=$(id -u)

VALIDATE(){
    if [$1 -ne 0]
      then 
          echo "$2 ... failed"
      exit 1
      else 
          echo "$2 .. success"
    fi
}      

if [ $ID -ne 0 ]
   then 
    echo : "Error ::Please run this script with root"
    exit 1
   else
    echo "you are root user"
fi

yum install mysql -y

VALIDATE $? "installing mysql"

yum install git -y

VALIDATE $? "Installing GIT"