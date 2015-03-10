class TweetFetcherController < ApplicationController

  def index
    @tweet_fetcher = TweetFetcher.new(params[:twitter_handle])
  end

end
