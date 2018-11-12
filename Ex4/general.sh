#!/bin/bash
cd ~/Desktop/OperationSystems/Ex7
{
	GREEN='\033[0;32m'
	RED='\033[0;31m'
	NC='\033[0m'
	clear
	{
		echo -e "${GREEN}---creating mkfifo generalFifo${NC}"
		mkfifo generalFifo
	}
	{
		echo "general --> shell1"
		sh shell1.sh
	}
	{
		echo -e "${RED}---removing mkfifo generalFifo${NC}"
		rm generalFifo
	}
}
