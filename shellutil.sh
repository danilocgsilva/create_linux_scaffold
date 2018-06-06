#!/bin/bash

## version
VERSION="0.0.0"

## Rights a single line entry to a file
write_line () {
  echo "$1" >> $2
}

## Builds the readme
build_readme () {
  write_line "# $1" README.md
}

## Main function
shellutil () {
    if [ -z $1 ]; then
      echo Please, provides the utility name.
      exit
    fi

    mkdir $1
    cd $1
    build_readme $1
}

## detect if being sourced and
## export if so else execute
## main function with args
if [[ ${BASH_SOURCE[0]} != $0 ]]; then
  export -f shellutil
else
  shellutil "${@}"
  exit $?
fi