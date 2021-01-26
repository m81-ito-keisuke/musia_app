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
    @comment = Comment.new
    @comments = @tweet.comments.includes(:user)
  end

  def search
    @tweets = SearchTweetsService.search(params[:keyword])
  end

  private
  def tweet_params
    params.require(:tweet).permit(:image, :title, :artist_name, :price, :cd_type_id, :music_title1, :music_file1,:music_title2, :music_file2, :music_title3, :music_file3, :music_title4, :music_file4, :music_title5, :music_file5, :music_title6, :music_file6, :music_title7, :music_file7,:music_title8, :music_file8, :music_title9, :music_file9, :music_title10, :music_file10, :music_title11, :music_file11,:music_title12, :music_file12, :music_title13, :music_file13, :music_title14, :music_file14, :music_title15, :music_file15,:music_title16, :music_file16, :music_title17, :music_file17, :music_title18, :music_file18, :music_title19, :music_file19,:music_title20, :music_fil20).merge(user_id: current_user.id)
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
