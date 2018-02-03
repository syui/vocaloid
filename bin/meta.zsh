#!/bin/zsh

set -eu
f=${0:a:h}/FFMETADATAFILE
o=${0:a:h}/out.mp3
dir=`ls ${0:a:h}`
file=`cat << EOF | peco
${dir}
EOF` > /dev/null 2>&1

echo ';FFMETADATA1
title=
title-sort=
artist=syui
album=origin/master
album_artist=syui
comment=https://syui.cf @syui@syui.cf
composer=git@github.com:syui/vocaloid
disc=1/x
genre=vocaloid
track=1/x
TYER=2015-06-01
artist-sort=syui
encoder=syui' >! $f

vim $f
ffmpeg -i $file -i $f -map_metadata 1 -codec copy -y $o
mv $o $file
