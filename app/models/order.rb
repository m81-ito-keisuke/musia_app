class Order < ApplicationRecord
<<<<<<< HEAD
  has_one_attached :image
  attr_accessor :token
  
  
  with_options presence: true do
    validates :number
    validates :exp_month
    validates :exp_year
    validates :cvc
  end
=======
>>>>>>> parent of 44ca912 (クレカフォームの実装)
end
