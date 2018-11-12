#!/bin/bash
cd ~/Desktop/OperationSystems/Ex6
counter=0
function processesCreator(){
	i=$1
	j=$2
	if [ $i -le 4 ] 
	then
		echo "P$i _ $j"
		((i++))
		{
			((j=(j*2)-1))
			processesCreator $i $j &
		};
		{
			((j++))
			processesCreator $i $j &
		}
	fi
	
}

processesCreator 0 1