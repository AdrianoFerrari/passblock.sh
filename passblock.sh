#!/usr/bin/env bash

#correct="$(cat /etc/verify)"
correct1="$(date +%N| sha1sum | awk '{print toupper($1)}')"
correct2="$(date +%N| sha1sum | awk '{print toupper($1)}')"
correct="$correct1$correct2"

echo "Password: $correct"
echo -n "Password: "
read password

if [ $password = $correct ]
  then
    $@
  else
    echo "Incorrect password"
    exit 1
fi
