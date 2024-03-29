class Music < ApplicationRecord
  belongs_to :user
  has_many :tracks, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :favorites
  has_one :order
  has_one_attached :image

  with_options presence: true do
    validates :title, length: { maximum: 22 } 
    validates :image
    validates :artist_name, length: { maximum: 22 } 
    validates :price, format: { with: /\A[0-9]+\z/ },
                      numericality: { only_integer: true, greater_than_or_equal_to: 500, less_than_or_equal_to: 50_000 }
  end

  validates :cd_type_id, numericality: { other_than: 1 }

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :cd_type

  validate :image_content_type, if: :was_attached?

  def image_content_type
    extension = ['image/png', 'image/jpg', 'image/jpeg']
    errors.add(:image, 'の拡張子が間違っています') unless image.content_type.in?(extension)
  end

  def was_attached?
    image.attached?
  end

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
end
