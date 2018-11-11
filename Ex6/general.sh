#!/bin/bash
cd ~/Desktop/OperationSystems/Ex6

function processesCreator(){
	a=1
	if [ $1 -ge 5 ]
	then
		return
	fi
	a=$(($a+$1))
	echo "Process - ${a}"
	processesCreator $a &
sleep 1
	processesCreator $a &
}

processesCreator 0
