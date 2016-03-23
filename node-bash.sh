#!/bin/bash

while getopts ":s:p:" opt; do
  case $opt in
    k)
      #kill all node processes
      ;;
    l)
      echo "$(ps | grep node)"
      ;;
    \?)
      echo "Invalid argument '-$OPTARG'" >&2
      exit 1
      ;;
    *)
      echo "Default"
      ;;
  esac
done
