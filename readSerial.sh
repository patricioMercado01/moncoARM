#!/bin/bash
n=1
while read -r line
do
   if [ $n -gt 3 ] && [ -n "$line" ] ; then
     break
   fi
    n=$((n+1))
done
echo $line
