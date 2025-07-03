#!/bin/bash
# -----------------------------------------------------------------------------------
# Filename:
# This will check the current Architecture and then install the correct version	


arch=$(uname -m)
if [ "$arch" = "arm64" ]; then
    echo "The CPU Architecture is arm64!"
    # copy the binary for arm64 Architecture

elif [ "$arch" = "x86_64" ]; then
    echo "The CPU Architecture is x86_64!"
    # copy the binary for x86_64 Architecture

fi


# types
# - arm64
# - x86_64

