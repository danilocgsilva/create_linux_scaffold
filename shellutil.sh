#!/bin/bash

## version
VERSION="1.0.0"

## Rights a single line entry to a file
write_line () {
  echo "$1" >> $2
}

## Builds the readme
build_readme () {
  write_line "# $1" README.md
}

build_main () {
  cat > $1.sh <<EOF
#!/bin/bash

## version
VERSION="0.0.0"

## Main function
$1 () {
  echo Script goes here...
}

## detect if being sourced and
## export if so else execute
## main function with args
if [[ ${BASH_SOURCE[0]} != $0 ]]; then
  export -f $1
else
  $1 "\${@}"
  exit $?
fi
EOF
}

# builds the makefile
build_makefile () {
  write_line "BIN ?= $1" Makefile
  write_line "PREFIX ?= /usr/local" Makefile
  write_line "" Makefile
  write_line "install:" Makefile
  write_line "	cp $1.sh \$(PREFIX)/bin/\$(BIN)" Makefile
  write_line "	chmod +x \$(PREFIX)/bin/\$(BIN)" Makefile
  write_line "" Makefile
  write_line "uninstall:" Makefile
  write_line "	rm -f \$(PREFIX)/bin/\$(BIN)" Makefile
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
    build_makefile $1
    build_main $1

    echo Finished. Check the $i folder in the local file.
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
