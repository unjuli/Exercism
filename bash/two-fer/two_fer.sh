#!/usr/bin/env bash

function two-fer() {
  default='you'
  name=${1:-$default}   
  printf 'One for %s, one for me.' "$name"
}

main () {
  two-fer "$@"
}

main "$@"

