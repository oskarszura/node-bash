#!/bin/bash

function printHelp {
  cat help.txt
}

while true ; do

  case $1 in

    -h|--help)
        printHelp
        ;;

    -k|--kill)
        killall node
        ;;

    -l|--list)
        ps aux | grep node | grep -v $$ | grep -v grep >&1
        ;;

    --)
        echo "Empty flag" >&1
        ;;

    *)
      echo "Invalid flag" >&1
      ;;

  esac

  exit 1

done
