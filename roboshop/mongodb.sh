#!/usr/bin/bash
source common.sh
STAMP "setting up repository\t"
echo '[mongodb-org-4.2]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/4.2/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-4.2.asc' >/etc/yum.repos.d/mongodb.repo
STATUSCHECK $?
STAMP "Instal mongodb\t\t"
yum install -y mongodb-org &>>$LOG
STATUSCHECK $?

STAMP "update mongodb listen address"
sed -i -e 's/127.0.0.1/0.0.0.0/' /etc/mongod.conf
STATUSCHECK $?

STAMP "Start Mongodb service\t"
systemctl enable mongod &>>$LOG && systemctl start mongod &>>$LOG
STATUSCHECK $?

STAMP "Download mongodb schema\t"
curl -s -L -o /tmp/mongodb.zip "https://github.com/roboshop-devops-project/mongodb/archive/main.zip" &>>$LOG
STATUSCHECK $?

STAMP "load schema\t\t"
cd /tmp && unzip -o mongodb.zip &>>$LOG && cd mongodb-main && mongo < catalogue.js &>>$LOG && mongo < users.js &>>$LOG
STATUSCHECK $?