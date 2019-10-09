# original music

vocaloid : hatsune miku, yamine renri

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

伴奏 : [@d_elf](https://twitter.com/d_elf), http://www.d-elf.com/

## hosi

number : 2

title : hosi

title origin : hosi feat. hatsune miku

download : [https://syui.cf/music/hosi.mp3](https://syui.cf/music/hosi.mp3)

author, 作詞, 作曲 : syui

伴奏 : [しゃろう@shlllllw](https://twitter.com/shlllllw) 

## tuki


number : 3

title : tuki

title origin : tuki feat. hatsune miku

download : [https://syui.cf/music/tuki.mp3](https://syui.cf/music/tuki.mp3)

download : [https://www.youtube.com/watch?v=qbBtpN1Bf7o](https://www.youtube.com/watch?v=qbBtpN1Bf7o)

author, 作詞, 作曲, 伴奏, 動画,  : syui

## siro

number : 4

title : siro

title origin : siro feat. hatsune miku

download [https://syui.cf/music/siro.mp3](https://syui.cf/music/siro.mp3)

author, 作詞, 作曲, 伴奏,  : syui

## sora

number : 5

title : sora

title origin : sora feat. hatsune miku

download : [https://syui.cf/music/sora.mp3](https://syui.cf/music/sora.mp3)

author, 作詞, 作曲, 伴奏,  : syui


## gaia

number : 6

title : gaia

title origin : gaia feat. hatsune miku

download : [https://syui.cf/music/gaia.mp3](https://syui.cf/music/gaia.mp3)

author, 作詞, 作曲, 伴奏,  : syui

## yume

number : 7

title : yume

title origin : yume feat. hatsune miku, feat. yamine renri

ver miku : [https://syui.cf/music/yume.mp3](https://syui.cf/music/yume.mp3)

ver renri : [https://syui.cf/music/yume_renri.mp3](https://syui.cf/music/yume_renri.mp3)

author, 作詞, 作曲, 伴奏,  : syui

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

