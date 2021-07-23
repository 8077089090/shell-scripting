#!/usr/bin/bash

## loops: 1. while 2.for
# while loop ;
#while [ expression ]; do
#commands
#done

##example for while loop : Run a loop for 10 times
i=10
while [ $i -gt 0 ]; do
  echo iteration=$i
  i=$(($i-1))
done

# for loop :
# for var in value1 value2 value3 value4 value5 ...valuen
# commands
#done

# example
for cricketers in dhoni kohli dravid ganguly sachin ; do
  echo $cricketers
done
