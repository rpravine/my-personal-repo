#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
   then 
    echo : "Error ::Please run this script with root"
    exit 1
   else
    echo "you are root user"
fi

  yum install mysql -y

if [ $? -ne 0 ]
then
    echo "ERROR:: Installing MySQL is failed"
    exit 1
else
    echo "Installing MySQL is SUCCESS"
fi

  yum isntall git -y

if [$? -ne 0]
   then
      echo "ERROR:: Installing git is failed"
      exit 1
   else
       echo "installing git is success"   
fi       