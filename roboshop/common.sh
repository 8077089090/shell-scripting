#!/usr/bin/bash

USERID=$(id -u)
  if [ $USERID -ne 0 ]; then
    echo use rootuser or sudo
    exit 2
  fi

  LOG=/tmp/roboshop.log
  rm -f $LOG

