#!/bin/bash

FILE=${1}

if [[ $FILE != *.pfx ]]; then
  echo "not a .pfx-file"
  exit 1
fi

FILE_NAME=${FILE%%pfx}b64.pfx
openssl base64 -in $FILE -out $FILE_NAME
