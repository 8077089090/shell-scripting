#!/usr/bin/bash
LOG=/tmp/roboshop.log
rm -f $LOG

STATUS CHECK() {
   if [ $1 -eq 0 ] ; then
   echo -e "\e[32mDONE\e[0m"
 else
 echo -e "\e[31mFAIL\e[0m"
 exit 1
 fi
 }
echo -n -e "Installing Nginx\t\t..."
 yum install nginx -y &>>$LOG
STATUS CHECK $?

echo -n -e "Enabling Nginx\t\t\t..."
 systemctl enable nginx &>>LOG
STATUS CHECK $?

echo -n -e "starting Nginx\t\t\t..."
 systemctl start nginx &>>LOG
STATUS CHECK $?