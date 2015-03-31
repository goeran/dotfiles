#!/bin/sh

ncal -w | sed -E '1,$'"s/ ($(date +%e))( |$)/ $(echo '\033[1;31m')\1$(echo  '\033[0m')\2/"

