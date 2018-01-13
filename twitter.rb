#!/usr/bin/ruby
# encoding: utf-8

# twitterライブラリの呼び出し
 require 'twitter'
 require 'pp'

# APIキーやアクセストークンを設定
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ""
  config.consumer_secret     = ""
  config.access_token        = ""
  config.access_token_secret = ""
end

# display timeline
client.home_timeline.each do |tweet|
  puts tweet.user.name + "[ID:" + tweet.user.screen_name + "]:" + tweet.text
end

# display mentions
client.mentions_timeline.each do |tweet|
  puts tweet.user.name + "[ID:" + tweet.user.screen_name + "]:" + tweet.text
end

# tweet
 # client.update(ARGV[0])
