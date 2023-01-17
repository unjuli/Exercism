#!/usr/bin/env bash

main() {
  
  while read -rn 1 digit; do
     (( armstrong_sum+=digit**${#1} ))
  done <<< "$1"

  [ "$armstrong_sum" = "$1" ] && echo "true" || echo "false"
}

main "$@"
