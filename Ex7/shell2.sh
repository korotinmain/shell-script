#!/bin/bash
{
    cat generalFifo
    pwd > generalFifo &
}