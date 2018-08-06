#!/bin/zsh

set -eu
f=${0:a:h}/FFMETADATAFILE
o=${0:a:h}/out.mp3
dir=`ls ${0:a:h}`

file=`cat << EOF | peco
${dir}
EOF` > /dev/null 2>&1

n=`echo $dir|wc -l|tr -d ' '`
n=`expr $n - 2`
echo $n
file_name=${file%%.*}
echo $file_name
echo ";FFMETADATA1
title=$file_name
title-sort=$file_name
artist=syui
album=origin/master
album_artist=$USER
comment=https://syui.cf @${USER}@${USER}.cf
composer=git@github.com:${USER}/vocaloid
disc=1/$n
genre=vocaloid
track=1/$n
TYER=`date '+%Y-%m-%d'`
artist-sort=$USER
encoder=$USER" >! $f

vim $f
ffmpeg -i $file -i $f -map_metadata 1 -codec copy -y $o
mv $o $file
