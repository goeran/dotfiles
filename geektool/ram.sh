#!/bin/bash

# special font: http://www.macosxtips.co.uk/geeklets/system/system-info-circular-graphics/

FREE_BLOCKS=$(vm_stat | grep free | awk '{ print $3 }' | sed 's/\.//')
INACTIVE_BLOCKS=$(vm_stat | grep inactive | awk '{ print $3 }' | sed 's/\.//')
SPECULATIVE_BLOCKS=$(vm_stat | grep speculative | awk '{ print $3 }' | sed 's/\.//')
FREE=$((($FREE_BLOCKS+SPECULATIVE_BLOCKS)*4096/1048576))
FREE_PERCENTAGE=$(bc -l <<< '(((1024*16)-'$FREE')/(1024*16)*100)')
FREE_PERCENTAGE_CIRCLE='X'$(printf "%0.0f" $(bc -l <<< "$FREE_PERCENTAGE/2"))'X'

echo $FREE_PERCENTAGE_CIRCLE | sed "s/X0X/a/;s/X1X/b/;s/X2X/c/;s/X3X/d/;s/X4X/e/;s/X5X/f/;s/X6X/g/;s/X7X/h/;s/X8X/i/;s/X9X/j/;s/X10X/k/;s/X11X/l/;s/X12X/m/;s/X13X/n/;s/X14X/o/;s/X15X/p/;s/X16X/q/;s/X17X/r/;s/X18X/s/;s/X19X/t/;s/X20X/u/;s/X21X/v/;s/X22X/w/;s/X23X/x/;s/X24X/y/;s/X25X/z/;s/X26X/A/;s/X27X/B/;s/X28X/C/;s/X29X/D/;s/X30X/E/;s/X31X/F/;s/X32X/G/;s/X33X/H/;s/X34X/I/;s/X35X/J/;s/X36X/K/;s/X37X/L/;s/X38X/M/;s/X39X/N/;s/X40X/O/;s/X41X/P/;s/X42X/Q/;s/X43X/R/;s/X44X/S/;s/X45X/T/;s/X46X/U/;s/X47X/V/;s/X48X/W/;s/X49X/X/;s/X50X/Y/"

echo $(printf "%0.0f" $FREE_PERCENTAGE)%

