#!/bin/sh

if [ -z $SOURCE_URL ]; then
   exit 1
fi

git clone $SOURCE_URL /data

cd /data
while true
do
   date
   sleep 60
   git pull
done
