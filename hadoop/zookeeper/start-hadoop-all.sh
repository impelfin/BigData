#!/bin/bash

namenode=$(ps -ef | grep 'NameNode')
datanode=$(ps -ef | grep 'DataNode')
secondarynamenode=$(ps -ef | grep 'SecondaryNameNode')
resourcemanager=$(ps -ef | grep 'ResourceManager')
nodemanager=$(ps -ef | grep 'NodeManager')
jobhistoryserver=$(ps -ef | grep 'JobHistoryServer')

second1=$(echo ${namenode} | cut -d " " -f2)
second2=$(echo ${datanode} | cut -d " " -f2)
second3=$(echo ${secondarynamenode} | cut -d " " -f2)
second4=$(echo ${resourcemanager} | cut -d " " -f2)
second5=$(echo ${nodemanager} | cut -d " " -f2)
second6=$(echo ${jobhistoryserver} | cut -d " " -f2)

for var in $second1 $second2 $second3 $second4 $second5 $second6
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

start-dfs.sh
sleep 5s

start-yarn.sh
sleep 5s

mr-jobhistory-daemon.sh start historyserver
sleep 2s

start-master.sh --webui-port 18080
sleep 2s

start-hbase.sh
sleep 2s

zkServer.sh start
sleep 2s

jps
