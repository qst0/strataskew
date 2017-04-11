#!/bin/bash

i="1"

while [ $i -lt 4200 ]
do
	curl http://stoney.sb.org/eno/oblique.html | grep H3 >> stoney.scrape.txt
	i=$[$i+1]
done

# TODO remove <H3> </H3> in vim
# %s/<H3>//g and %s/<\/H3>//g
# CAN BE DONE WITH SED ALSO !!!

# cat stoney.scrape.txt | sort -u > stoney.oblique.txt
