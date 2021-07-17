#!/usr/bin/bash
LOG=/tmp/roboshop.log
rm -rf LOG
echo -e "Installing Nginx\t\t...\t\e[32mdone\e[0m"
 yum install nginx -y >>$LOG
echo -e "Enabling Nginx\t\t\t...\t\e[32mdone\e[0m"
 systemctl enable nginx >>LOG
echo -e "starting Nginx\t\t\t...\t\e[32mdone\e[0m"
 systemctl start nginx >>LOG