# 準備

## terraform install

~~~
$ brew install terraform
~~~

その他のプラットフォームは適当に配置してpath通すだけいいはず
https://www.terraform.io/downloads.html


### とりあえず補完を入れる

bashとzshは入るその他shellは知らん

~~~
$ terraform -install-autocomplete
~~~

- - -

## (Optional)エディターに関して

おすすめは`JetBrains(InteliJ IDEA)`

### JetBrains系

syntax highlightと補完ができる pluginが提供されてる

https://plugins.jetbrains.com/plugin/7808-hashicorp-terraform--hcl-language-support

### vim

`hashivim/vim-terraform`

### その他editor

よくしらないから
がんばって

## Github Tokenを発行しておく

repo:all 付き

https://github.com/settings/tokens
