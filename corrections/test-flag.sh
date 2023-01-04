#!/bin/sh

STATUS=0
FILENAME="flag"
while [ $STATUS -eq "0" ]
do
if [ -f $FILENAME ];
    then STATUS=1;
else
    sleep 10s;
fi

done