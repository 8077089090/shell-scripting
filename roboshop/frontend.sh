#!/usr/bin/bash
LOG=/tmp/roboshop.log
rm -f $LOG
echo -n -e "Installing Nginx\t\t..."
 yum install nginx -y &>>$LOG
 if [ $? -eq 0 ] ; then
   echo -e "\e[32mDONE\e[0m"
 else
 echo -e "\e[31mFAIL\e[0m"
 fi

echo -n -e "Enabling Nginx\t\t\t..."
 systemctl enable nginx &>>LOG
 if [ $? -eq 0 ] ; then
   echo -e "\e[32mDONE\e[0m"
 else
 echo -e "\e[31mFAIL\e[0m"
 fi

echo -n -e "starting Nginx\t\t\t..."
 systemctl start nginx &>>LOG
 if [ $? -eq 0 ] ; then
   echo -e "\e[32mDONE\e[0m"
 else
 echo -e "\e[31mFAIL\e[0m"
 fi
