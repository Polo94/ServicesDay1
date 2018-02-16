class HomeController < ApplicationController
  
  def index
  
  end

  def tweet
    @twitt = tweet_params[:content]
    SendTweet.new(@twitt).perform
  end

  def tweet_params

  	params.require(:tweet).permit(:content)
  end



end
