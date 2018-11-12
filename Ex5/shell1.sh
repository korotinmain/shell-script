#!/bin/bash
{
    {
        echo "shell1 --> shell3"
		sh shell3.sh
    }
    {
        cat signalFifo
    }
}