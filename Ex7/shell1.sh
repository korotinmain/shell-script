#!/bin/bash
{
    {
        echo "Give me your heart" > generalFifo
    }&{
        sleep 2
        echo "shell1 --> shell2" 
        sh shell2.sh
    }
    {
        cat generalFifo
    }
}