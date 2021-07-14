#!/usr/bin/bash

## printing something on screen can be done by two commands
## 1. printf
##2. echo

##  in the above two commands, echo is widely used since it is more descriptive inspite doing all the things that printf does which will have more syntaxes
# syntax : echo <MESSAGE>

echo HELLO CHANDU

# print multiple lines : for this use \n , see the below example to understand

echo -e "HELLO CHANDU\n\twhatsup?"
## NOTE : Here in above syntax after echo we used -e which means MESSAGE need to be typed in Quotes
##        \n is used to give multiple lines , HELLO CHANDU is displayed in one line  and whatsup? is displayed in followed second line
##        \t is for tab space

 ## syntax for color : echo -e "\e[COLOR_CODEmMESSAGE"
 # COLORS ARE : RED(31), GREEN(32), YELLOW(33), BLUE(34), MAGNETA(35), CYANT(36

 echo -e "\e[31mCHANDU"
 ## The above command give CHANDU in RED color