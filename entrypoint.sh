#!/bin/sh -l

result=$(wget -O - $1 | /pup $2)
echo "::set-output name=result::$result"
