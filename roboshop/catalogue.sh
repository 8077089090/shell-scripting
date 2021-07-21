#!/usr/bin/bash
source common.sh

STAMP "Install nodejs file"
yum install nodejs make gcc-c++ -y &>>$LOG
STATUSCHECK $?

STAMP "Add roboshop appllication user"
id roboshop &>>$LOG
if [ $? -ne 0 ]; then
  useradd roboshop &>>$LOG
fi
STATUSCHECK $?

STAMP "Download application code"
curl -s -L -o /tmp/catalogue.zip "https://github.com/roboshop-devops-project/catalogue/archive/main.zip" &>>$LOG
STATUSCHECK $?

STAMP "Extract downloaded code"
cd /home/roboshop &&  unzip -o /tmp/catalogue.zip &>>$LOG && mv catalogue-main catalogue && cd /home/roboshop/catalogue && npm install
STATUSCHECK $?


# mv /home/roboshop/catalogue/systemd.service /etc/systemd/system/catalogue.service
# systemctl daemon-reload
# systemctl start catalogue
# systemctl enable catalogue