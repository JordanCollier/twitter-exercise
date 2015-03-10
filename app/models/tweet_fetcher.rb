class TweetFetcher

attr_accessor :twitter_handle


  def initialize(twitter_handle)
    @twitter_handle = twitter_handle
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = Rails.application.secrets.consumer_key
      config.consumer_secret     = Rails.application.secrets.consumer_secret
      config.access_token        = Rails.application.secrets.access_token
      config.access_token_secret = Rails.application.secrets.access_token_secret
    end
  end

  def user_tweets
    @client.user_timeline(@twitter_handle)
  end
end
