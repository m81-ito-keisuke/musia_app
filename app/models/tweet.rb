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

  mount_uploader :music_file1, AudiofileUploader
  mount_uploader :music_file2, AudiofileUploader
  mount_uploader :music_file3, AudiofileUploader
  mount_uploader :music_file4, AudiofileUploader
  mount_uploader :music_file5, AudiofileUploader
  mount_uploader :music_file6, AudiofileUploader
  mount_uploader :music_file7, AudiofileUploader
  mount_uploader :music_file8, AudiofileUploader
  mount_uploader :music_file9, AudiofileUploader
  mount_uploader :music_file10, AudiofileUploader
  mount_uploader :music_file11, AudiofileUploader
  mount_uploader :music_file12, AudiofileUploader
  mount_uploader :music_file13, AudiofileUploader
  mount_uploader :music_file14, AudiofileUploader
  mount_uploader :music_file15, AudiofileUploader
  mount_uploader :music_file16, AudiofileUploader
  mount_uploader :music_file17, AudiofileUploader
  mount_uploader :music_file18, AudiofileUploader
  mount_uploader :music_file19, AudiofileUploader
  mount_uploader :music_file20, AudiofileUploader

  validate :image_content_type, if: :was_attached?
  
  def image_content_type
    extension = ['image/png', 'image/jpg', 'image/jpeg']
    errors.add(:image, "の拡張子が間違っています") unless image.content_type.in?(extension)
  end

  def was_attached?
    self.image.attached?
  end
end
