#!/usr/bin/env bash

raindrops() {
  local num=$1
  local fizzbuzz
  local fizzmap=(
    [3]="Pling"
    [5]="Plang"
    [7]="Plong"
  )
  for divisor in "${!fizzmap[@]}"; do
    (( num % divisor == 0 )) && fizzbuzz+="${fizzmap[divisor]}"
   done

  echo "${fizzbuzz:=$num}"
}

err() {
  echo "[Error]: $1" >&2
  exit 1
}

main() {
  (( $# == 1 )) || err "invalid arguments"

  raindrops "$1"
}

main "$@"
