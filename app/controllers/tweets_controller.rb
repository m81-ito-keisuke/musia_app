class TweetsController < ApplicationController
  before_action :set_tweet, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :show, :search]

  def index
    @tweets = Tweet.includes(:user).order("created_at DESC")
    query = "SELECT * FROM tweets"
    #@tweets = Tweet.find_by_sql(query)
  end
  
  def new
    @tweet = Tweet.new
  end

  def create
    #Tweet.create(tweet_params)
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
      render :create
    else
      render :new
    end
  end

  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
    redirect_to action: :index
  end

  def edit
  end

  def update
    tweet = Tweet.find(params[:id])
    tweet.update(tweet_params)
  end

  def show
    @track = Track.new
    @tracks = @tweet.tracks.includes(:user)
    @comment = Comment.new
    @comments = @tweet.comments.includes(:user)
  end

  def search
    @tweets = SearchTweetsService.search(params[:keyword])
  end

  private
  def tweet_params
    params.require(:tweet).permit(:image, :title, :artist_name, :price, :cd_type_id).merge(user_id: current_user.id)
  end

  def set_tweet
    @tweet = Tweet.find(params[:id])
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
