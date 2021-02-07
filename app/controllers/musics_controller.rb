class MusicsController < ApplicationController
  before_action :set_music, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :show, :search]

  def index
    @musics = Music.includes(:user).order('created_at DESC')
    query = 'SELECT * FROM musics'
    # @musics = Music.find_by_sql(query)
  end

  def new
    @music = Music.new
  end

  def create
    # Music.create(music_params)
    @music = Music.new(music_params)
    if @music.save
      render :create
    else
      render :new
    end
  end

  def destroy
    music = Music.find(params[:id])
    music.destroy
    music.image.purge
    redirect_to action: :index
  end

  def edit
  end

  def update
    music = Music.find(params[:id])
    music.update(music_params)
  end

  def show
    @user = User.new
    @track = Track.new
    @tracks = @music.tracks.includes(:user)
    @comment = Comment.new
    @comments = @music.comments.includes(:user)
  end

  def search
    @musics = SearchMusicsService.search(params[:keyword])
  end

  private

  def music_params
    params.require(:music).permit(:image, :title, :artist_name, :price, :cd_type_id).merge(user_id: current_user.id)
  end

  def set_music
    @music = Music.find(params[:id])
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
