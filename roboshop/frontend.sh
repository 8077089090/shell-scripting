#!/usr/bin/bash
LOG=/tmp/roboshop.log
rm -f $LOG

STATUSCHECK() {
   if [ $1 -eq 0 ] ; then
   echo -e "\e[32mDONE\e[0m"
   else
   echo -e "\e[31mFAIL\e[0m"
   exit 1
   fi
 }
 STAMP() {
   echo -n -e "$1\t\t..."
 }
STAMP "Installing Nginx"
 yum install nginx -y &>>$LOG
STATUSCHECK $?

STAMP "Enabling Nginx\t"
 systemctl enable nginx &>>LOG
STATUSCHECK $?

STAMP "starting Nginx\t"
 systemctl start nginx &>>LOG
STATUSCHECK $?
