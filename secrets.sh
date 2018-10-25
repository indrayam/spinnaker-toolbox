#!/usr/bin/env bash

ksec list spin-clouddriver-rw-files-135024354 | awk -F' ' '{$1=$2=$3=""; printf "%s\n\n\n", $0}' | awk '{gsub(/\\n/,"\n")}1'
