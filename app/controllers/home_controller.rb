class HomeController < ApplicationController
  
  def index
  
  end

  def tweet
    @message = tweet_params[:content]
    SendTweet.new(@message).perform
  end

  def tweet_params

  	params.require(:tweet).permit(:content)
  end



end
