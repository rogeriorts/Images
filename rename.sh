#!/bin/bash
a=0
for f in *.bmp
do
	convert $f -type truecolor -depth 8 BMP3:$a.bmp
	echo "Processing $f file..."
	# take action on each file. $f store current file name
	a=$((a + 1))
done
