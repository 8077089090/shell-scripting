#!/usr/bin/bash

## inputs can be loaded using special variables
##0-n,@,#,*
# in script if you want to access script name then $0
echo $0
# if you want to access the first argument then $1
echo $1
# pull all the parsed values
echo $*
echo $@
#number of values parsed is $#
echo $#