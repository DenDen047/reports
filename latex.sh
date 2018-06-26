#!/bin/bash

if [ $# -ne 1 ]; then
  echo "show me the name of directory."
  exit 1
fi

cd $1

TexFile="paper"
TexCmd="
    uplatex ${TexFile}.tex &&\
    pbibtex ${TexFile} &&\
    uplatex ${TexFile}.tex &&\
    uplatex ${TexFile}.tex &&\
    dvipdfmx ${TexFile}"
TexCmd="
    uplatex ${TexFile}.tex &&\
    dvipdfmx ${TexFile}"

docker run \
    --rm -it \
    --user="$(id -u):$(id -g)" \
    --net=none \
    -v="/${PWD}:/data" \
    denden047/latex \
    /bin/bash -c "${TexCmd}"
