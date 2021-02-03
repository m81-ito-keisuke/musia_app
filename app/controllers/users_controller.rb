class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @musics = user.musics.order('created_at DESC')
  end
end
