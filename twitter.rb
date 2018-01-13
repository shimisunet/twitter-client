#!/usr/bin/ruby
# encoding: utf-8

# twitterライブラリの呼び出し
 require 'twitter'

# APIキーやアクセストークンを設定
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ""
  config.consumer_secret     = ""
  config.access_token        = ""
  config.access_token_secret = ""
end

# display timeline
client.home_timeline.each do |tweet|
  puts "\e[33m" + tweet.user.name + "\e[32m" + "[ID:" + tweet.user.screen_name + "]"
  puts "\e[0m" + tweet.text
end

# display mentions
client.mentions_timeline.each do |tweet|
  puts "\e[33m" + tweet.user.name + "\e[32m" + "[ID:" + tweet.user.screen_name + "]"
  puts "\e[0m" + tweet.text
end

# display list
client.list_timeline("list_creater", "list_name").each do |tweet|
  puts "\e[33m" + tweet.user.name + "\e[32m" + "[ID:" + tweet.user.screen_name + "]"
  puts "\e[0m" + tweet.text
end

# tweet
 # client.update(ARGV[0])
