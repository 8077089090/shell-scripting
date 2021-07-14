#!/usr/bin/bash

A=Mr.perfect
echo B=$A
## In the above text, A is a variable as it stores some data in it(Mr.perfect) and to represent/ access that data we need to give "$" sign that why we given echo B=$A

## command substitutes
NO_OF_USERS =$(who |wc-l)
echo number of users=$NO_OF_USERS
