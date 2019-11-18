#!/bin/bash
echo $JOB_NAME
echo  run >> log
if [[ $(cat log | wc -l) -lt 3 ]]
then
  echo failed
  exit 1
else
  rm log
  exit 0
fi
