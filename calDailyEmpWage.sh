#!/bin/bash -x

#CONSTANT
ISPRESENT=1
EMPRATEPERHRS=20
EMPHRS=8

randomCheck=$((RANDOM%2))

if [ $ISPRESENT -eq $randomCheck ]
then
	salary=$(( $EMPRATEPERHRS * $EMPHRS ))
else
	salary=0
fi
