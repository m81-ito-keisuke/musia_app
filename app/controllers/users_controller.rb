class UsersController < ApplicationController

  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @musics = user.musics.order('created_at DESC')
    @favorite_musics = user.favorite_musics
  end

  def favorites
    user = User.find(params[:id])
    @nickname = user.nickname
    @musics = user.musics.order('created_at DESC')
    @favorite_musics = user.favorite_musics
  end
end
