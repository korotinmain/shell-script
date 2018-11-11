#!/bin/bash
{
	GREEN='\033[0;32m'
	RED='\033[0;31m'
	NC='\033[0m'
	clear
	{
		mkfifo generalFifo
		echo -e "${GREEN}---creating mkfifo generalFifo${NC}"
	}
	{
		{
			echo "general --> shell2"
			sh shell2.sh
		}&{
			echo "general --> shell1"
			sh shell1.sh
		}
	};{
		cat generalFifo
		echo "general <-- shell 1 "
	}
	{
		echo -e "${RED}---removing mkfifo generalFifo${NC}"
		rm generalFifo
	}
}