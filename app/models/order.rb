class Order < ApplicationRecord
  has_one_attached :image
  attr_accessor :token
  
  
  with_options presence: true do
    validates :price
    validates :token
  end
end
