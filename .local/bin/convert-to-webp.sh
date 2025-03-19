#!/bin/bash

# defaults
WIDTH=1920
HEIGHT=1080

# functions
convert_file () {
  convert_to_webp $1
}

convert_directory () {
  for file in $( find $1 -type f ); do
    case "$file" in
      *.png | *.jpg | *.jpeg)
        convert_to_webp $file
      ;;
    esac
  done
}

convert_files () {
  for file in $@; do
    case "$file" in
      *.png | *.jpg | *.jpeg)
        convert_to_webp $file
      ;;
    esac
  done
}

convert_to_webp () {
  FILE=$1
  EXT="${FILE##*.}"
  echo "converting $FILE"
  cwebp -resize $WIDTH $HEIGHT "${FILE}" -o "${FILE%%${EXT}}"webp > /dev/null 2>&1
}

if [[ "$#" -eq 0 ]]; then
  echo "send a path to a directory, a file or multiple files to convert to the script."
elif [[ "$#" -eq 1 ]]; then
  if [[ -d $1 ]]; then
    convert_directory $1
  elif [[ -f $1 ]]; then
    convert_file $1
  fi
elif [[ "$#" -gt 1 ]]; then
  convert_files $@
fi
