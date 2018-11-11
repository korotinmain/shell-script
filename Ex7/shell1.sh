#!/bin/bash
{
    {
        echo "Give me your heart" > generalFifo
    }&{
        echo "shell1 --> shell2" 
        sh shell2.sh
    }
    {
        cat generalFifo
    }
}