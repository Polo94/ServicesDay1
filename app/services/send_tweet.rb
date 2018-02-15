
class SendTweet

require 'dotenv-rails'
require 'twitter'
  
  def initialize(tweet)
  @tweet = tweet
  end
  
  def perform
  log_in_to_twitter
  send_tweet
  end

  def log_in_to_twitter
  Dotenv.load
    @client = Twitter::REST::Client.new do |config|
    config.consumer_key        = ENV['TWITTER_API_KEY']
    config.consumer_secret     = ENV['TWITTER_API_SECRET']
    config.access_token        = ENV['TWITTER_ACCESS_TOKEN']
    config.access_token_secret = ENV['TWITTER_ACCESS_SECRET']
    end
  end

  def send_tweet
  @client.update("#{@tweet}")
  end

end