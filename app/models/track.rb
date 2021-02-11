class Track < ApplicationRecord
  belongs_to :user
  belongs_to :music

  with_options presence: true do
    validates :track_name1, length: { maximum: 22 }
    validates :track_file1
    validates :track_name2, if: -> { track_file2.present? }, length: { maximum: 22 }
    validates :track_file2, if: -> { track_name2.present? }
    validates :track_name3, if: -> { track_file3.present? }, length: { maximum: 22 }
    validates :track_file3, if: -> { track_name3.present? } 
    validates :track_name4, if: -> { track_file4.present? }, length: { maximum: 22 }
    validates :track_file4, if: -> { track_name4.present? } 
    validates :track_name5, if: -> { track_file5.present? }, length: { maximum: 22 }
    validates :track_file5, if: -> { track_name5.present? } 
    validates :track_name6, if: -> { track_file6.present? }, length: { maximum: 22 }
    validates :track_file6, if: -> { track_name6.present? } 
    validates :track_name7, if: -> { track_file7.present? }, length: { maximum: 22 }
    validates :track_file7, if: -> { track_name7.present? } 
    validates :track_name8, if: -> { track_file8.present? }, length: { maximum: 22 }
    validates :track_file8, if: -> { track_name8.present? } 
    validates :track_name9, if: -> { track_file9.present? }, length: { maximum: 22 }
    validates :track_file9, if: -> { track_name9.present? } 
    validates :track_name10, if: -> { track_file10.present? }, length: { maximum: 22 }
    validates :track_file10, if: -> { track_name10.present? } 
    validates :track_name11, if: -> { track_file11.present? }, length: { maximum: 22 }
    validates :track_file11, if: -> { track_name11.present? } 
    validates :track_name12, if: -> { track_file12.present? }, length: { maximum: 22 }
    validates :track_file12, if: -> { track_name12.present? } 
    validates :track_name13, if: -> { track_file13.present? }, length: { maximum: 22 }
    validates :track_file13, if: -> { track_name13.present? } 
    validates :track_name14, if: -> { track_file14.present? }, length: { maximum: 22 }
    validates :track_file14, if: -> { track_name14.present? } 
    validates :track_name15, if: -> { track_file15.present? }, length: { maximum: 22 }
    validates :track_file15, if: -> { track_name15.present? } 
    validates :track_name16, if: -> { track_file16.present? }, length: { maximum: 22 }
    validates :track_file16, if: -> { track_name16.present? } 
    validates :track_name17, if: -> { track_file17.present? }, length: { maximum: 22 }
    validates :track_file17, if: -> { track_name17.present? } 
    validates :track_name18, if: -> { track_file18.present? }, length: { maximum: 22 }
    validates :track_file18, if: -> { track_name18.present? } 
    validates :track_name19, if: -> { track_file19.present? }, length: { maximum: 22 }
    validates :track_file19, if: -> { track_name19.present? } 
    validates :track_name20, if: -> { track_file20.present? }, length: { maximum: 22 }
    validates :track_file20, if: -> { track_name20.present? } 
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
end
