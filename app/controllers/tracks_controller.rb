class TracksController < ApplicationController

  def new
    @tweet = Tweet.find(params[:tweet_id])
    @track = Track.new
  end

  def create
    @track = Track.new(track_params)
    if @track.save
      render :create
    else
      render :new
    end
  end


  private

  def track_params
    params.require(:track).permit(:track_name, :track_file).merge(user_id: current_user.id, tweet_id: params[:tweet_id])
  end

end
