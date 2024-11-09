#!/bin/bash
# PURPOSE:  FFMPEG Audio Conversion Script (mp3 -> flac)

echo "-------------------------|" $TITLE "|"

cd "$(dirname "$BASH_SOURCE")" ||
{
    echo "Error getting script directory" >&2
    exit 1
}

# VARS ###########################################################
TITLE='FFMPEG Audio Conversion Script'

for f in *.mp3; do 
	ffmpeg -i "$f" -c:a flac "${f%.mp3}.flac"; 
done