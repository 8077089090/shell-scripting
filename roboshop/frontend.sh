#!/usr/bin/bash
source common.sh
 yum install nginx -y >>$LOG
 systemctl enable nginx
 systemctl start nginx