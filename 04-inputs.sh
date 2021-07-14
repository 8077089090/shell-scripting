#!/usr/bin/bash

## inputs can be loaded using special varialbles
##0-n,@,#,*
# in scriot if you want to accecc scriptname then $0
echo $0
# if you want to access the first argument then $1
echo $1
# pull all the parsed values
echo $*
echo $@
#number of values parsed is $#
echo $#