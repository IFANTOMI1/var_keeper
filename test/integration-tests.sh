#!/bin/bash

echo "Waiting 3 seconds for Flask..."
sleep 3

echo "Making curl request to http://127.0.0.1:5000"
ANSW=$(curl -s -o /dev/null -w "%{http_code}" http://127.0.0.1:5000)

if [ "$ANSW" != "200" ]; then
  echo "Integration Test FAIL. HTTP code: $ANSW"
  exit 1
else
  echo "Integration Test PASS"
  exit 0
fi
