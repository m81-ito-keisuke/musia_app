class Track < ApplicationRecord
  belongs_to :user
  belongs_to :tweet

  mount_uploader :track_file, AudiofileUploader

end