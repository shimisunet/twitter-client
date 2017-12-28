#!/usr/bin/ruby
# encoding: utf-8

# twitterライブラリの呼び出し
require 'twitter'

# shimisu_kのAPIキーやアクセストークンを設定
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ""
  config.consumer_secret     = ""
  config.access_token        = ""
  config.access_token_secret = ""
end

# タイムラインの表示
client.home_timeline.each do |tweet|
  puts tweet.user.screen_name.+ ":"+ tweet.text
end

# ツイートする
client.update(ARGV[0])
