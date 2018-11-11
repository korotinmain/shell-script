#!/bin/bash
{
    {
        echo "Give me your heart" > signal1
    }&{
        echo "shell1 --> shell2" 
        sh shell2.sh
    }
    {
        cat signal2
    }
}