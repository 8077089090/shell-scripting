#!/usr/bin/bash
source common.sh

STAMP "Install nodejs file\t"
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

STAMP "Extract downloaded code\t"
cd /home/roboshop &&  unzip -o /tmp/catalogue.zip &>>$LOG && rm -rf catalogue && mv catalogue-main catalogue
STATUSCHECK $?

STAMP "Install nodejs dependencies"
cd /home/roboshop/catalogue && npm install --unsafe-perm &>>$LOG
STATUSCHECK $?

STAMP "Fix application permissios"
chown roboshop:roboshop /home/roboshop -R &>>$LOG
STATUSCHECK $?

STAMP "update systemD file\t"
sed -i -e 's/MONGO_DNSNAMEmongodb.roboshop.internal/' /home/roboshop/catalogue/systemd.service && mv /home/roboshop/catalogue/systemd.service  /etc/systemd/system/catalogue.service
STATUSCHECK $?

STAMP "start catalogue service\t"
systemctl daemon-reload &>>$LOG && systemctl start catalogue &>>$LOG && systemctl enable catalogue &>>$LOG
STATUSCHECK $?
