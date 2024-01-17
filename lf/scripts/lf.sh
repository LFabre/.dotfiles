#!/bin/bash

manual='---

Usage
  lf <command>

Available Commands:
  brave      Fix Brave Browser startup problem
  help       Display manual
'

#:: Core
case "$1" in
brave) lf-fix-brave "${@:2}" ;;
help)
  echo -e "$manual"
  ;;
*)
  echo -e "Error: Invalid command [$1]"
  echo -e "$manual"
  ;;
esac
