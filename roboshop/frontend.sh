#!/usr/bin/bash
LOG=/tmp/roboshop.log
rm -f $LOG
echo -e Installing Nginx\t\t
 yum install nginx -y &>>$LOG
 if [ $? -eq 0 ] ; then
   echo -n -e "\e[32mDONE\e[0m"
 else
 echo -n -e "\e[31mFAIL\e[0m"
 fi
echo -n -e Enabling Nginx\t\t
 systemctl enable nginx &>>LOG
 if [ $? -eq 0 ] ; then
   echo -n -e "\e[32mDONE\e[0m"
 else
 echo -n -e "\e[31mFAIL\e[0m"
 fi
echo -n -e starting Nginx\t\t
 systemctl start nginx &>>LOG
 if [ $? -eq 0 ] ; then
   echo -n -e "\e[32mDONE\e[0m"
 else
 echo -n -e "\e[31mFAIL\e[0m"
 fi
