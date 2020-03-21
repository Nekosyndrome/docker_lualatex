# tex docker

## tl;dr

個人用の tex 環境構築です。デフォルトで入れたもの：

- debian:buster
- lualatex (texlive)
- pandoc
- adobe sourcehanserif & sourcehansans(zh_TW + ja フォント)
- tlmgr パッケージ諸々： Dockerfile 参照

イメージサイズは 2.5GB くらい。

## ビルド

```shell-session
$ ./download_font.sh
$ docker build -t tex . 
```

## 使い方

tex compile:

```shell-session
$ docker run -it --rm -v `pwd`:/workdir tex lualatex -halt-on-error doc.tex
```

md -> tex:

```shell-session
$ docker run -it --rm -v `pwd`:/workdir tex pandoc -r markdown-auto_identifiers -w latex in.md -o out.tex
```

md->pdf は細かい調整が難しいので諦めました。基本的に md -> tex -> pdf のような流れで使っています。

alias 登録したほうが使い勝手いいかも
