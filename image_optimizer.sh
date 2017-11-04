#!/bin/sh

#   
#   IMPORTANT:
#   you need ImageMagic
#   and libjpeg!
#

# Resize to fit 780x520
convert $1 -resize 780x520 resized_$1

# Convert to PPM
djpeg -outfile $1.ppm resized_$1

# Removed resized
rm -rf resized_$1

# Save img file name
FNAME=$1

# Rename original to old
mv $1 old_$1

# Optimize
cjpeg -optimize -quality 69 -outfile $FNAME $1.ppm 
