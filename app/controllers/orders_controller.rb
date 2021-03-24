class OrdersController < ApplicationController

  def new
    @music = Music.find(params[:music_id])
    @order = Order.new
    if current_user.id == @music.user_id
      redirect_to root_path
    end
  end

  def create
  end

end
