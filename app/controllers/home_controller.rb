class HomeController < ApplicationController
  
  def index
  content = params.permit(:tweet)
  newtweet = SendTweet.new(content['tweet']).perform
  flash[:success] = "Envoi réussi"
  
  end

end
