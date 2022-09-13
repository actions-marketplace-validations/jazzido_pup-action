#!/bin/sh -l

result=$(curl -s $1 | pup $2)
echo "::set-output name=result::$result"
