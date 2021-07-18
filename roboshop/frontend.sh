#!/usr/bin/bash

source common.sh
STAMP "Installing Nginx"
yum install nginx -y
STATUSCHECK $?

STAMP "Download frontend"
curl -s -L -o /tmp/frontend.zip "https://github.com/roboshop-devops-project/frontend/archive/main.zip" &>>$LOG
STATUSCHECK $?

STAMP "Remove old HTdocs"
cd /usr/share/nginx/html &>>$LOG && rm -rf * &>>$LOG
STATUSCHECK $?

STAMP "Extract frontend and archive"
unzip /tmp/frontend.zip &>>$LOG && mv frontend-main/* . &>>$LOG && mv static/* . &>>$LOG && rm -rf frontend-master static &>>$LOG
STATUSCHECK $?

STAMP "Update roboshop config"
mv localhost.conf /etc/nginx/default.d/roboshop.conf &>>$LOG
STATUSCHECK $?

STAMP "Enabling Nginx\t"
 systemctl enable nginx &>>LOG
STATUSCHECK $?

STAMP "starting Nginx\t"
 systemctl start nginx &>>LOG
STATUSCHECK $?