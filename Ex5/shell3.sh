#!/bin/bash
{
    echo 'Give me your heart' > signalFifo
    cat generalFifo
}