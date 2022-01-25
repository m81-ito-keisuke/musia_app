class UsersController < ApplicationController
before_action :set_user

  def show
    @nickname = @user.nickname
    @musics = @user.musics.order('created_at DESC')
    @favorite_musics = @user.favorite_musics
  end

  def favorites
    @nickname = @user.nickname
    @musics = @user.musics.order('created_at DESC')
    @favorite_musics = @user.favorite_musics
  end

  def following
    @users = @user.followings
  end

  def followers
    @users = @user.followers
  end

  def parchased
    @musics = Music.includes(:user).order('created_at DESC')
    query = 'SELECT * FROM musics'
    # @musics = Music.find_by_sql(query)
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
