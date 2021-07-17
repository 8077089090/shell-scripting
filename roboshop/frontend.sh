#!/usr/bin/bash
LOG=/tmp/roboshop.log
 yum install nginx -y
 systemctl enable nginx
 systemctl start nginx