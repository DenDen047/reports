#!/bin/bash

CMD="ruby $1"

docker run -it --rm \
    -v ${PWD:/root/work:ro \
    -w /root/work \
    ${CMD}
