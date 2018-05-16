#!/bin/bash

## version
VERSION="UTILITYVERSION"


## Main function
UTILITYNAME () {
    ||||||UTILITY_CODE_HERE||||||
}

## detect if being sourced and
## export if so else execute
## main function with args
if [[ ${BASH_SOURCE[0]} != $0 ]]; then
  export -f UTILITYNAME
else
  UTILITYNAME "${@}"
  exit $?
fi