#!/bin/sh

ps -amcwwwxo "command %mem %cpu" | grep -v grep | head -13

# from: http://www.macosxtips.co.uk/geeklets/system/top-processes-sorted-by-memory-usage

