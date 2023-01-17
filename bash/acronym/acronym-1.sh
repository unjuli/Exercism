#!/usr/bin/env bash

# disabled extended globbing
set -o noglob

function acronym() {
  IFS=" -"
  local acronym=""
  read -ra phrase <<<"$@" 
  for word in "${phrase[@]}"; do
    word=$(echo "$word" | tr -d '[:punct:]' )
    acronym+="${word:0:1}"
  done
  acronym=$(echo "$acronym" | tr '[:lower:]' '[:upper:]')  
  echo "$acronym"
}

acronym "$@"
