#!/bin/sh

df -H -l | grep G | awk '{ print $5 }'
