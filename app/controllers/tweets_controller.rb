class TweetsController < ApplicationController

  before_action :authenticate_user!, only: [:new, :create]
  
  def index
    @tweet = Tweet.all
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)

    if tweet.save
      redirect_to action: "index"
    else
      redirect_to action: "new"

  end

  private
  def tweet_params
    params.require(:tweet).permit(:body)
  end
end
