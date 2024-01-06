#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
   then 
    echo : Error you are not root user
   else
    echo "you are root user"
 exit 1   
fi

yum install mysql -y

if [ $? -ne 0 ]
then
    echo "ERROR:: Installing MySQL is failed"
    exit 1
else
    echo "Installing MySQL is SUCCESS"
fi
                    