#!/bin/bash

stop-dfs.sh
sleep 5s

stop-yarn.sh
sleep 5s

namenode=$(ps -ef | grep 'NameNode')
datanode=$(ps -ef | grep 'DataNode')
secondarynamenode=$(ps -ef | grep 'SecondaryNameNode')
resourcemanager=$(ps -ef | grep 'ResourceManager')
nodemanager=$(ps -ef | grep 'NodeManager')

second1=$(echo ${namenode} | cut -d " " -f2)
second2=$(echo ${datanode} | cut -d " " -f2)
second3=$(echo ${secondarynamenode} | cut -d " " -f2)
second4=$(echo ${resourcemanager} | cut -d " " -f2)
second5=$(echo ${nodemanager} | cut -d " " -f2)

for var in $second1 $second2 $second3 $second4 $second5
do
	echo $var
	if [ -f ${var} ]
	then
		result=$(kill -9 ${var}) 
		echo process is killed.
	else
		echo running process not found. 
	fi
done

jps
