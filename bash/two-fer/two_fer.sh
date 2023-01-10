#!/usr/bin/env bash

function two-fer() {
  default='you'
  name=${1:-$default}   
  printf "One for $name, one for me."
}

main () {
  two-fer "$@"
}

main "$@"

