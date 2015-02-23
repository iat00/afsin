#!/bin/sh

for i in `dpkg --list|egrep '^rc'|awk '{print $2}'`
do
    sudo dpkg -P $i
done
