#!/bin/bash

FreeMem=$(free -m|grep Mem|awk '{print $4}')
LoadAvg=`uptime|awk '{print $9}'`
RootFree=$(df -h|grep "/dev/mapper/centos_centos7-root"|awk '{print $4}')
echo "###########################################################"
echo
echo "Available RAM memory: $FreeMem MB"
echo
echo "Load Average of a server: $LoadAvg"
echo
echo "Available Root Space: $RootFree"
echo
echo "###########################################################"
