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
##
##   ARRAYS CONCEPT  ##
b=(10 aa 20 bb 30 cc)
echo ${b[0]}
# above command gives the first value of b which is 10
echo ${b[5]}
# above command gives fifth  value of b which is cc ; Here 0 counts as first value followed by 1,2,3..
b=(10 aa 20 bb 30 cc)
echo ${b[*]}
## above command gives entire range or set of values that are stored inside "b" which is 10 aa 20 bb 30 cc
echo ${b[*]:0:4}
## above command gives values of "b" from 0  to till 3 arrays (which means total 4 set of values) which is 10 aa 20 bb
unset b[3]
## Above command removes the 3rd index value which is "bb" from $b(variable b)
echo ${b[*]:0:4}
##Now above command shows different result than earlier what it showed because here we removed the 3rd index value hence it removes it and counts the followed value which is "30" and the result will be displayed as 10 aa 20 30

# NOTE : Here we removed 3rd index and its value as we try to find that variable using command echo ${b[3]} then we cannot be able to see any result which means there is nothing left.But however we can again insert it if we need it by b[3]
## LOCAL Concept ##
# Parent shell is the one where we working and trying to execute whereas childshell is where we need to export the command from parentshell
echo $COURSE
##NOTE: from the above statement, here we given echo $COURSE inside childshell and we were going to termial where we working  and then we assign COURSE=Devops and also <export Course=Devops> (Here export is the command which connects parent shell to childshell)
# Now if we give bash 03-variables.sh then it gives all the content which was in 03-variables.sh
