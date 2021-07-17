#!/usr/bin/bash

USERID=$(id -u)
  if [ $USERID -ne 0 ]; then
    echo use rootuser or sudo
    exit 2
  fi

  LOG=/tmp/roboshop.log
  rm -f $LOG

STATUSCHECK() {
   if [ $1 -eq 0 ] ; then
   echo -e "\e[32mDONE\e[0m"
   else
   echo -e "\e[31mFAIL\e[0m"
   exit 1
   fi
 }
 STAMP() {
   echo -n -e "$1\t\t..."
 }

