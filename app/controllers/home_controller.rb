class HomeController < ApplicationController
  
  def index
  end

  def tweet
    @twitt = tweet_params[:content]
    SendTweet.new(@twitt).perform
    redirect_to root_path
  end

  private

  def tweet_params
  	params.require(:tweet).permit(:content)
  end



end
