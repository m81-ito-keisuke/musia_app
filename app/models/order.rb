class Order < ApplicationRecord
  has_one_attached :image
  attr_accessor :token
  
  
  with_options presence: true do
    validates :number
    validates :exp_month
    validates :exp_year
    validates :cvc
  end
end
