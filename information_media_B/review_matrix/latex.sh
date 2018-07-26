#!/bin/bash

TexFile="paper"
TexCmd="\
    pdflatex ${TexFile}.tex && \
    bibtex ${TexFile} && \
    pdflatex ${TexFile}.tex && \
    pdflatex ${TexFile}.tex"

docker run \
    --rm -it \
    --user="$(id -u):$(id -g)" \
    --net=none \
    -v="/${PWD}:/data" \
    -w="/data" \
    denden047/latex \
    /bin/bash -c "${TexCmd}"
