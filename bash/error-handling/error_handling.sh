#!/usr/bin/env bash

err() {
  echo "Usage: error_handling.sh <person>" >&2
  exit 1
}

function error-handling() {
  if [ "$#" -eq 1 ]; then
    echo "Hello, $@"
  else
    err
  fi
}

main() {
  error-handling "$@"
}

main "$@"
