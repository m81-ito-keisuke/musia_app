class Order < ApplicationRecord
  has_one_attached :image
  attr_accessor :token
  belongs_to :music
  belongs_to :user
  
  
  with_options presence: true do
    validates :token
    validates :music_id
    validates :user_id
  end
end
