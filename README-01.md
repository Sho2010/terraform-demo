# GCPにつないでみる

## service accountを設定する

1. GCPからservice account key fileをdownload
2. `account.json` という名前でrepository直下に配置する


## 中身を覗いてみる

とりあえず設定ファイルがどうなってるのか見てみる

`$ vim gcp.tf`

~~~hcl
provider "google" {
  credentials = "${file("account.json")}"
  project     = "dev-playground-1019"
  region      = "asia-northeast-1"
}
~~~

account.jsonってサービスアカウントを読み込んでるのがわかる

# 繋ぐ

~~~shell
$ terraform init
$ terraform plan
~~~

