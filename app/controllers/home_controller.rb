class HomeController < ApplicationController
  
  def index
  content = params.permit(:tweet)
  newtweet = SendTweet.new(content['tweet'])
  
  end

end
