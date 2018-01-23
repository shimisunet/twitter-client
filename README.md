# twitter-client

## 何これ？
Ruby 且つターミナル上で動くTwitter クライアント。

## 使い方
初めにgem コマンドでRuby のライブラリをターミナルからインストールする。

```zsh
gem install twitter
```
予め、Twitter のdeveloper サイトから下記の値を取得する。
https://apps.twitter.com/

- Consumer Key (API Key)
- Consumer Secret (API Secret)
- Access Token
- Access Token Secret

取得した上記の値を、twitter.rb に入力し保存する。

```ruby
  config.consumer_key        = "Consumer Key (API Key)"
  config.consumer_secret     = "Consumer Secret (API Secret)"
  config.access_token        = "Access Token"
  config.access_token_secret = "Access Token Secret"
```

twitter.rb をターミナルで実行する。

```zsh
chmod +x twitter.rb
ruby twitter.rb
```
