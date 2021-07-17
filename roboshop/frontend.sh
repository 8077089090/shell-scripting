#!/usr/bin/bash

STAMP "Installing Nginx"
 yum install nginx -y &>>$LOG
STATUSCHECK $?

STAMP "Enabling Nginx\t"
 systemctl enable nginx &>>LOG
STATUSCHECK $?

STAMP "starting Nginx\t"
 systemctl start nginx &>>LOG
STATUSCHECK $?