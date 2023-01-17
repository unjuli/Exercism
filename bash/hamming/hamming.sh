#!/usr/bin/env bash

err() {
  echo "$@"
  exit 1
}

function hamming_distance() {
  local dna1=$1
  local dna2=$2
  local -i distance=0

  [[ "${#dna1}" = "${#dna2}" ]] || err "strands must be of equal length"

  for (( index=0; index<${#dna1}; index++ )); do
    [ "${dna1:index:1}" = "${dna2:index:1}" ] || (( distance=distance+1 ))
  done

  echo $distance   
}

(( $# == 2 )) || err "Usage: hamming.sh <string1> <string2>"
hamming_distance "$@"
