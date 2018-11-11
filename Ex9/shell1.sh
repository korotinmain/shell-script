#!/bin/bash
{
    {
        cat signalFifo # catch shell 2 give me your heart
        echo "shell 1 --> general"
    }&&{
        pwd > generalFifo
    }   
}