class Tweet < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_one_attached :image

  with_options presence: true do
  validates :title
  validates :image
  validates :artist_name
  end

  validates :cd_type_id, numericality: { other_than: 1 } 

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :cd_type

  

end
