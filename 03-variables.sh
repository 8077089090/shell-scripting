#!/usr/bin/bash

A=Mr.perfect
echo B=$A
## In the above text, A is a variable as it stores some data in it(Mr.perfect) and to represent/ access that data we need to give "$" sign that why we given echo B=$A

## command substitutes
NO_OF_USERS=$(who |wc -l)
echo number of users=$NO_OF_USERS
DATE=$(date +%F)
echo welcome, today date is $DATE
## In the above syntax: $(date +%F) , it gives the current date of every day
## example: a=600 ,echo $a, readonly a (it means "a" is given with 600 and it can be replaced or overwrite wih anyother new data)

b=(10 aa 20 bb 30 cc)
echo ${b[0]}
# above command gives the first value of b which is 10
echo ${b[5]}
# above command gives fifth  value of b which is cc ; Here 0 counts as first value followed by 1,2,3..