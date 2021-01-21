class Tweet < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_one_attached :image

  validates :title, presence: true
  validates :image, presence: true
  validates :artist_name, presence: true
  validates :cd_type_id, numericality: { other_than: 1 } 

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :cd_type

  

end
