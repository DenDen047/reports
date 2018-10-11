#!/bin/bash

docker run -it --rm \
    -v /${PWD}:/root/work \
    -w /root/work \
    continuumio/anaconda3 \
    /bin/bash -c "python3 main.py"
