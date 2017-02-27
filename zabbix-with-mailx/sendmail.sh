#!/bin/bash
#export LANG=zh_CN.UTF-8
FILE=/tmp/mailtmp.txt
echo "$3" >$FILE
dos2unix -k $FILE
/usr/bin/mailx -s "$2" $1 < $FILE