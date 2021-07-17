#!/usr/bin/bash
LOG=/tmp/roboshop.log
rm -f $LOG
echo -e Installing Nginx
 yum install nginx -y &>>$LOG
 if [ $? -eq 0 ] ; then
   echo -e "\e[32mDONE\e[0m"
 else
 echo -e "\e[31mFAIL\e[0m"
 fi
echo -e Enabling Nginx
 systemctl enable nginx &>>LOG
 echo $?
echo -e starting Nginx
 systemctl start nginx &>>LOG
 echo $?