# original music

vocaloid : hatsune miku

author : [syui](https://mstdn.syui.cf/@syui)

page : [https://syui.cf/music](https://syui.cf/music)

```sh
$ curl -sLO https://syui.cf/music/niji.mp3
$ mpv niji.mp3
```

## niji


number : 1

title : niji

title origin : niji feat. hatsune miku

download : [https://syui.cf/music/niji.mp3](https://syui.cf/music/niji.mp3)

author, 作詞, 作曲 : syui

BGM : [@d_elf](https://twitter.com/d_elf), http://www.d-elf.com/

## hosi

number : 2

title : hosi

title origin : hosi feat. hatsune miku

download : [https://syui.cf/music/hosi.mp3](https://syui.cf/music/hosi.mp3)

author, 作詞, 作曲 : syui

BGM : [しゃろう@shlllllw](https://twitter.com/shlllllw) 

## tuki


number : 3

title : tuki

title origin : tuki feat. hatsune miku

download : [https://syui.cf/music/tuki.mp3](https://syui.cf/music/tuki.mp3)

download : [https://www.youtube.com/watch?v=qbBtpN1Bf7o](https://www.youtube.com/watch?v=qbBtpN1Bf7o)

author, 作詞, 作曲, BGM, 動画, その他 : syui

## siro

number : 4

title : siro

title origin : siro feat. hatsune miku

download [https://syui.cf/music/siro.mp3](https://syui.cf/music/siro.mp3)

author, 作詞, 作曲, BGM, その他 : syui

## sora

number : 5

title : sora

title origin : sora feat. hatsune miku

download : [https://syui.cf/music/sora.mp3](https://syui.cf/music/sora.mp3)

author, 作詞, 作曲, BGM, その他 : syui


## ffmpeg convert

```sh
$ ffmpeg -i -vol 1024 $in.wav $out.mp3

$ ./bin/meta.zsh
```

## album dl & checksum

```sh
$ curl -sLO https://syui.cf/music/music.zip

$ md5sum ./music.zip

$ curl -sL https://raw.githubusercontent.com/syui/vocaloid/master/json/music.json | jq -r ".[]|select(.id == \"album\")|.checksum"
```

