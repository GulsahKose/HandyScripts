#!/bin/bash

declare -a XMLARRAY

XMLARRAY=($(find . -name "*.xml"))
arrLen=${#XMLARRAY[@]}

for (( i=0; i<${arrLen}; i++ ));
do
  echo ${XMLARRAY[$i]}                                                                    
  xmllint -o ${XMLARRAY[$i]} --format ${XMLARRAY[$i]}
done
