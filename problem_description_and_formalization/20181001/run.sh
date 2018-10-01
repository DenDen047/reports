#!/bin/bash

NAME=exercise1
CMD="java -jar msv.jar ${NAME}.dtd ${NAME}.xml"

docker run -it --rm \
    -v ${PWD}:/root/work \
    -w /root/work \
    java \
    ${CMD}
