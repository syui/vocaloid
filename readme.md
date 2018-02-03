# original music

vocaloid : hatsune miku

author : syui

[@syui@syui.cf](https://mstdn.syui.cf/@syui)

```sh
$ curl -sLO https://syui.cf/music/niji.mp3
$ mpv niji.mp3
```

## niji

number : 1

title : niji

title origin : niji feat. hatsune miku

download : [https://syui.cf/music/niji.mp3](https://syui.cf/music/niji.mp3)

作詞, 作曲 : syui

BGM : [@d_elf](https://twitter.com/d_elf), http://www.d-elf.com/

## hosi

number : 2

title : hosi

title origin : hosi feat. hatsune miku

download : [https://syui.cf/music/hosi.mp3](https://syui.cf/music/hosi.mp3)

作詞, 作曲 : syui

BGM : [しゃろう@shlllllw](https://twitter.com/shlllllw) 

## saki

number : 3

title : saki

title origin : saki feat. hatsune miku

download : [https://syui.cf/music/saki.mp3](https://syui.cf/music/saki.mp3)

download : [https://www.youtube.com/watch?v=qbBtpN1Bf7o](https://www.youtube.com/watch?v=qbBtpN1Bf7o)

作詞, 作曲, BGM, 動画, その他 : syui

## siro

number : 4

title : siro

title origin : siro feat. hatsune miku

download [https://syui.cf/music/siro.mp3](https://syui.cf/music/siro.mp3)

作詞, 作曲, BGM, その他 : syui


## ffmpeg convert

```sh
$ ffmpeg -i $in.wav $out.mp3

$ ffmpeg -i -vol 512 $in.wav $out.mp3

$ echo ";FFMETADATA1
title=xxxx
title-sort=xxxx
artist=$USER
album=origin/master
album_artist=$USER
comment=https://syui.cf @syui@syui.cf
composer=git@github.com:syui/vocaloid
disc=1/x
genre=vocaloid
track=1/x
TYER=2015-06-01
artist-sort=$USER
encoder=$USER" > meta.txt
$ ffmpeg -i $in -i meta.txt -map_metadata 1 -codec copy -y $out
```

