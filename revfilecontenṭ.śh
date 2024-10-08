#!/bin/bash
l=`cat $1 | wc -l`
while [ $l -gt 0 ]; do
		head -$l $1 | tail -1 >> temp
		l=`expr $l - 1`
done
cat temp
rm temp
