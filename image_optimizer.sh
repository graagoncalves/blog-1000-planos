#!/bin/sh

# Convert to PPM
djpeg -outfile $1.ppm $1

# Save img file name
FNAME=$1

# Rename it to old_
mv $1 old_$1

# Optimize
cjpeg -optimize -quality 65 -outfile $FNAME $1.ppm 

