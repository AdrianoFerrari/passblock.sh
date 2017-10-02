#!/usr/bin/env bash

echo -n "Password: "
read password

correct="$(cat /etc/verify)"

if [ $password = $correct ]
  then
    $@
fi
