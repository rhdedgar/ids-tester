#!/bin/bash -e

if [ "$PAUSE_ON_START" = "true" ] ; then
  echo
  echo "This container's startup has been paused indefinitely because PAUSE_ON_START has been set."
  echo
  while true; do
    sleep 10    
  done
fi

echo
echo "ids-tester version v0.0.4"
echo
echo "running NIDS tests"
/usr/local/bin/tmNIDS -N 99 2>&1
echo "finished running NIDS tests, return code: " $?
