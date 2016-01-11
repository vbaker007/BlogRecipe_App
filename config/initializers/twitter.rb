client = Twitter::REST::Client.new do |config|
  config.twitter_api_key    = ENV['CONSUMER_KEY']
  config.twitter_api_secret   = ENV['CONSUMER_SECRET']
  config.oauth_token        = ENV["TWITTER_OAUTH_TOKEN"]
  config.oauth_token_secret = ENV["TWITTER_OAUTH_TOKEN_SECRET"]
 
end