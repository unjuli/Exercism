#!/usr/bin/env bash

raindrops() {
  local num=$1
  local fizzbuzz
  local fizzmap=(
    [3]="Pling"
    [5]="Plang"
    [7]="Plong"
  )
  for i in "${!fizzmap[@]}"; do
    if [[ $(( num % i )) == 0 ]]
      then fizzbuzz+="${fizzmap[$i]}"
    fi
   done

  echo "${fizzbuzz:=$num}"
}

err() {
  echo "[Error]: $1" >&2
  exit 1
}

main() {
  if [ $# -ne 1 ]
   then err "invalid arguments"
  fi

  local result_str
  result_str=$(raindrops "$1")
  echo "$result_str"
}

main "$@"
