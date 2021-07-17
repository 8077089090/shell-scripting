#!/usr/bin/bash
LOG=/tmp/roboshop.log
 yum install nginx -y >$LOG
 systemctl enable nginx
 systemctl start nginx