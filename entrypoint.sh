#!/bin/sh -l

result=$(wget -O - $1 | /pup $2)
result="${result//'%'/'%25'}"
result="${result//$'\n'/'%0A'}"
result="${result//$'\r'/'%0D'}"

echo "::set-output name=result::$result"
