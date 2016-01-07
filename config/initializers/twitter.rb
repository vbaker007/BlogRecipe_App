client = Twitter::REST::Client.new do |config|
  #config.twitter_api_key    = ENV['CONSUMER_KEY']
  #config.twitter_api_secret   = ENV['CONSUMER_SECRET']
  #config.oauth_token        = ENV["TWITTER_OAUTH_TOKEN"]
  #config.oauth_token_secret = ENV["TWITTER_OAUTH_TOKEN_SECRET"]
  config.consumer_key        = ENV['CONSUMER_KEY']
  config.consumer_secret     = ENV['CONSUMER_SECRET']
  config.access_token        = ENV["TWITTER_OAUTH_TOKEN"]
  config.access_token_secret = ENV["TWITTER_OAUTH_TOKEN_SECRET"]
end