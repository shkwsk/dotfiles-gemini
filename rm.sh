#!/bin/sh
trash=$HOME/.trash

if [ ! -d $trash ]
then
    mkdir -p $trash
fi
for i
do
    mv $i $trash
done
