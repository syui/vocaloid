#!/bin/zsh

set -eu
f=${0:a:h}/FFMETADATAFILE
o=${0:a:h}/out.mp3
dir=`ls ${0:a:h}`

file=`cat << EOF | peco
${dir}
EOF` > /dev/null 2>&1

n=`echo $dir|wc -l|tr -d ' '`
n=`expr $n - 1`
echo $n
file_name=${file%%.*}
echo $file_name
echo ";FFMETADATA1
title=$file_name
artist=syui
album=origin/master
genre=vocaloid
track=1/$n
encoder=$USER" >! $f

vim $f
ffmpeg -i $file -i $f -map_metadata 1 -codec copy -y $o
ffmpeg -i $o -i ./cover.png -disposition:v:1 attached_pic -map 0 -map 1 -c copy -id3v2_version 3 -metadata:s:v title="album cover" $file
rm $f
rm $o
