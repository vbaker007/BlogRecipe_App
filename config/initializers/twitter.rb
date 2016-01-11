client = Twitter::REST::Client.new do |config|
   #config.consumer_key        = ENV['PZ2TyTLHigjVJJnNWAlrbQqPl']
   #config.consumer_secret     = ENV['5nsERRzArzlG3jc8X3cHKYLcW136uwEveVGkXdMa3UJPQInQco']
   #config.access_token        = ENV["2952709455-WcycfZJMixPx7LdirQHhgyIztziNbw56QPWuQLo"]
   #config.access_token_secret = ENV["1DpGEfZHYI92p5fywwx1jhsQTvXqvTkdOpIcTnGWLkgX8"]
   config.twitter_api_key    = ENV['CONSUMER_KEY']
   config.twitter_api_secret   = ENV['CONSUMER_SECRET']
   config.oauth_token        = ENV["TWITTER_OAUTH_TOKEN"]
   config.oauth_token_secret = ENV["TWITTER_OAUTH_TOKEN_SECRET"]
end