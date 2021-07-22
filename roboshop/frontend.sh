#!/usr/bin/bash

source common.sh
STAMP "Installing Nginx\t"
yum install nginx -y &>>$LOG
STATUSCHECK $?

STAMP "Download frontend\t"
curl -s -L -o /tmp/frontend.zip "https://github.com/roboshop-devops-project/frontend/archive/main.zip" &>>$LOG
STATUSCHECK $?

STAMP "Remove old HTdocs\t"
cd /usr/share/nginx/html &>>$LOG && rm -rf * &>>$LOG
STATUSCHECK $?

STAMP "Extract frontend and archive"
unzip /tmp/frontend.zip &>>$LOG && mv frontend-main/* . &>>$LOG && mv static/* . &>>$LOG && rm -rf frontend-master static &>>$LOG
STATUSCHECK $?

STAMP "copy roboshop config\t"
mv localhost.conf /etc/nginx/default.d/roboshop.conf &>>$LOG
STATUSCHECK $?
STAMP "Update roboshop config\t"
sed -i -e '/catalogue s/localhost/catalogue.roboshop.internal/' /etc/nginx/default.d/roboshop.conf
STATUSCHECK $?

STAMP "Enabling Nginx\t\t"
 systemctl enable nginx &>>LOG
STATUSCHECK $?

STAMP "starting Nginx\t\t"
 systemctl start nginx &>>LOG
STATUSCHECK $?