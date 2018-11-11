#!/bin/bash
{
	GREEN='\033[0;32m'
	RED='\033[0;31m'
	NC='\033[0m'
	clear
	{
		echo -e "${GREEN}---creating mkfifo signal1${NC}"
		mkfifo signal1
		echo -e "${GREEN}---creating mkfifo signal2${NC}"
		mkfifo signal2
	}
	{
		echo "general --> shell1"
		sh shell1.sh
	}
	{
		echo -e "${RED}---removing mkfifo signal1${NC}"
		rm signal1
		echo -e "${RED}---removing mkfifo signal2${NC}"
		rm signal2
	}
}