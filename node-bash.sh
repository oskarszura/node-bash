#!/bin/bash

function printHelp {
  echo "------ node-bash HELP - 0.1v --------"
  echo "Use script with one flag lister below"
  echo "* -l|--list - list all node processes"
  echo "* -k|--kill - kill all node processes"
  echo "-------------------------------------"
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
