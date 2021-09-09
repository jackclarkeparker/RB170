#!/bin/bash

function server () {
  while [[ 3 -lt 4 ]]
  do
    read message
    echo "You said: $message"
  done
}

coproc SERVER_PROCESS { server; }

nc -lv 2345 <&${SERVER_PROCESS[0]} >&${SERVER_PROCESS[1]}
