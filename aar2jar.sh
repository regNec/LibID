#! /bin/bash

if ! [ -x "$(command -v unzip)" ]; then
  echo "Error: unzip is not installed."
  exit 1
fi

aar_file=$1
jar_file=$2
unzip -o "${aar_file}" -d temp/ > /dev/null

find temp/ -name "*.jar" | wc -l
mv temp/classes.jar "${jar_file}"