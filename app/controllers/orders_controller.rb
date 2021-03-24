class OrdersController < ApplicationController

  def index
<<<<<<< HEAD
    @order = Order.new
    @music = Music.find(params[:music_id])
    if current_user.id == @music.user_id
      redirect_to root_path
    end
=======
>>>>>>> parent of 44ca912 (クレカフォームの実装)
  end

  def create
    @order = Order.new(order_params)
    if @order.valid?
      Payjp.api_key = "sk_test_9be880b3161c35283287f3a4"  # 自身のPAY.JPテスト秘密鍵を記述しましょう
      Payjp::Charge.create(
        amount: @music.price,  # 商品の値段
        card: order_params[:token],    # カードトークン
        currency: 'jpy'                 # 通貨の種類（日本円）
      )
      @order.save
      return redirect_to root_path
    else
      render 'index'
    end
  end

  private

  def order_params
    params.permit(:price).merge(token: params[:token])
  end
  
end
