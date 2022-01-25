class OrdersController < ApplicationController

  def index
    @order = Order.new
    @music = Music.find(params[:music_id])
    if user_signed_in? == false || current_user.id == @music.user_id || @music.orders.present?
      redirect_to root_path
    end
  end

  def create
    @music = Music.find(params[:music_id])
    @order = Order.new(order_params)
    if @order.valid?
      pay_music
      @order.save
      render :create
    else
      render :index
    end
  end

  private

  def order_params
    params.permit(:user_id, :music_id).merge(token: params[:token], user_id: current_user.id, music_id: params[:music_id])
  end

  def pay_music
    Payjp.api_key = ENV["PAYJP_SECRET_KEY"]  # 自身のPAY.JPテスト秘密鍵を記述しましょう
    Payjp::Charge.create(
      amount: @music.price,  # 商品の値段
      card: order_params[:token],    # カードトークン
      currency: 'jpy'                 # 通貨の種類（日本円）
    )
  end
  
end
