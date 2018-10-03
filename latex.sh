#!/bin/bash

if [ $# -ne 1 ]; then
  echo "show me the name of directory."
  exit 1
fi

cd $1
pwd

TexFile="paper"
# === uplatex ===
# TexCmd="
#     uplatex ${TexFile}.tex &&\
#     pbibtex ${TexFile} &&\
#     uplatex ${TexFile}.tex &&\
#     uplatex ${TexFile}.tex &&\
#     dvipdfmx ${TexFile}"
# === pdflatex ===
TexCmd="
    pdflatex ./${TexFile}.tex &&\
    bibtex ./${TexFile} &&\
    pdflatex ./${TexFile}.tex &&\
    pdflatex ./${TexFile}.tex"
TexCmd="
    pdflatex ./${TexFile}.tex"

docker run \
    --rm -it \
    --user="$(id -u):$(id -g)" \
    --net=none \
    -v="/${PWD}:/data" \
    -w=/data \
    denden047/latex \
    /bin/bash -c "${TexCmd}"
