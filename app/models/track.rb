class Track < ApplicationRecord
  belongs_to :user
  belongs_to :tweet

  with_options presence: true do
    validates :track_name1
    validates :track_file1
  end

  mount_uploader :track_file1, AudiofileUploader
  mount_uploader :track_file2, AudiofileUploader
  mount_uploader :track_file3, AudiofileUploader
  mount_uploader :track_file4, AudiofileUploader
  mount_uploader :track_file5, AudiofileUploader
  mount_uploader :track_file6, AudiofileUploader
  mount_uploader :track_file7, AudiofileUploader
  mount_uploader :track_file8, AudiofileUploader
  mount_uploader :track_file9, AudiofileUploader
  mount_uploader :track_file10, AudiofileUploader
  mount_uploader :track_file11, AudiofileUploader
  mount_uploader :track_file12, AudiofileUploader
  mount_uploader :track_file13, AudiofileUploader
  mount_uploader :track_file14, AudiofileUploader
  mount_uploader :track_file15, AudiofileUploader
  mount_uploader :track_file16, AudiofileUploader
  mount_uploader :track_file17, AudiofileUploader
  mount_uploader :track_file18, AudiofileUploader
  mount_uploader :track_file19, AudiofileUploader
  mount_uploader :track_file20, AudiofileUploader

  validate :audio_content_type

  def audio_content_type
    extension = ['audio/wav', 'audio/mpeg']
    errors.add(:track_file1, '拡張子が間違っています') unless track_file1.content_type.in?(extension)
  end
end
