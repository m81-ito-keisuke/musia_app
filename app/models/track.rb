class Track < ApplicationRecord
  belongs_to :user
  belongs_to :music

  with_options presence: true, length: { maximum: 22 } do
    validates :track_name1
    validates :track_name2, if: -> { track_file2.present? || track_file3.present? || track_file4.present? || track_file5.present? || track_file6.present? || track_file7.present? || track_file8.present? || track_file9.present? || track_file10.present? || track_file11.present? || track_file12.present? || track_file13.present? || track_file14.present? || track_file15.present? || track_file16.present? || track_file17.present? || track_file18.present? || track_file19.present? || track_file20.present?}
    validates :track_name3, if: -> { track_file3.present? || track_file4.present? || track_file5.present? || track_file6.present? || track_file7.present? || track_file8.present? || track_file9.present? || track_file10.present? || track_file11.present? || track_file12.present? || track_file13.present? || track_file14.present? || track_file15.present? || track_file16.present? || track_file17.present? || track_file18.present? || track_file19.present? || track_file20.present? }
    validates :track_name4, if: -> { track_file4.present? || track_file5.present? || track_file6.present? || track_file7.present? || track_file8.present? || track_file9.present? || track_file10.present? || track_file11.present? || track_file12.present? || track_file13.present? || track_file14.present? || track_file15.present? || track_file16.present? || track_file17.present? || track_file18.present? || track_file19.present? || track_file20.present? }
    validates :track_name5, if: -> { track_file5.present? || track_file6.present? || track_file7.present? || track_file8.present? || track_file9.present? || track_file10.present? || track_file11.present? || track_file12.present? || track_file13.present? || track_file14.present? || track_file15.present? || track_file16.present? || track_file17.present? || track_file18.present? || track_file19.present? || track_file20.present?}
    validates :track_name6, if: -> { track_file6.present? || track_file7.present? || track_file8.present? || track_file9.present? || track_file10.present? || track_file11.present? || track_file12.present? || track_file13.present? || track_file14.present? || track_file15.present? || track_file16.present? || track_file17.present? || track_file18.present? || track_file19.present? || track_file20.present?}
    validates :track_name7, if: -> { track_file7.present? || track_file8.present? || track_file9.present? || track_file10.present? || track_file11.present? || track_file12.present? || track_file13.present? || track_file14.present? || track_file15.present? || track_file16.present? || track_file17.present? || track_file18.present? || track_file19.present? || track_file20.present?}
    validates :track_name8, if: -> { track_file8.present? || track_file9.present? || track_file10.present? || track_file11.present? || track_file12.present? || track_file13.present? || track_file14.present? || track_file15.present? || track_file16.present? || track_file17.present? || track_file18.present? || track_file19.present? || track_file20.present?}
    validates :track_name9, if: -> { track_file9.present? || track_file10.present? || track_file11.present? || track_file12.present? || track_file13.present? || track_file14.present? || track_file15.present? || track_file16.present? || track_file17.present? || track_file18.present? || track_file19.present? || track_file20.present?}
    validates :track_name10, if: -> { track_file10.present? || track_file11.present? || track_file12.present? || track_file13.present? || track_file14.present? || track_file15.present? || track_file16.present? || track_file17.present? || track_file18.present? || track_file19.present? || track_file20.present? }
    validates :track_name11, if: -> { track_file11.present? || track_file12.present? || track_file13.present? || track_file14.present? || track_file15.present? || track_file16.present? || track_file17.present? || track_file18.present? || track_file19.present? || track_file20.present? }
    validates :track_name12, if: -> { track_file12.present? || track_file13.present? || track_file14.present? || track_file15.present? || track_file16.present? || track_file17.present? || track_file18.present? || track_file19.present? || track_file20.present? }
    validates :track_name13, if: -> { track_file13.present? || track_file14.present? || track_file15.present? || track_file16.present? || track_file17.present? || track_file18.present? || track_file19.present? || track_file20.present? }
    validates :track_name14, if: -> { track_file14.present? || track_file15.present? || track_file16.present? || track_file17.present? || track_file18.present? || track_file19.present? || track_file20.present? }
    validates :track_name15, if: -> { track_file15.present? || track_file16.present? || track_file17.present? || track_file18.present? || track_file19.present? || track_file20.present? }
    validates :track_name16, if: -> { track_file16.present? || track_file17.present? || track_file18.present? || track_file19.present? || track_file20.present? }
    validates :track_name17, if: -> { track_file17.present? || track_file18.present? || track_file19.present? || track_file20.present? }
    validates :track_name18, if: -> { track_file18.present? || track_file19.present? || track_file20.present? }
    validates :track_name19, if: -> { track_file19.present? || track_file20.present? }
    validates :track_name20, if: -> { track_file20.present? }
  end
  
  with_options presence: true do
    validates :track_file1
    validates :track_file2,  if: -> { track_name2.present? || track_name3.present? || track_name4.present? || track_name5.present? || track_name6.present? || track_name7.present? || track_name8.present? || track_name9.present? || track_name10.present? || track_name11.present? || track_name12.present? || track_name13.present? || track_name14.present? || track_name15.present? || track_name16.present? || track_name17.present? || track_name18.present? || track_name19.present? || track_name20.present? }  
    validates :track_file3,  if: -> { track_name3.present? || track_name4.present? || track_name5.present? || track_name6.present? || track_name7.present? || track_name8.present? || track_name9.present? || track_name10.present? || track_name11.present? || track_name12.present? || track_name13.present? || track_name14.present? || track_name15.present? || track_name16.present? || track_name17.present? || track_name18.present? || track_name19.present? || track_name20.present?  }  
    validates :track_file4,  if: -> { track_name4.present? || track_name5.present? || track_name6.present? || track_name7.present? || track_name8.present? || track_name9.present? || track_name10.present? || track_name11.present? || track_name12.present? || track_name13.present? || track_name14.present? || track_name15.present? || track_name16.present? || track_name17.present? || track_name18.present? || track_name19.present? || track_name20.present?  } 
    validates :track_file5,  if: -> { track_name5.present? || track_name6.present? || track_name7.present? || track_name8.present? || track_name9.present? || track_name10.present? || track_name11.present? || track_name12.present? || track_name13.present? || track_name14.present? || track_name15.present? || track_name16.present? || track_name17.present? || track_name18.present? || track_name19.present? || track_name20.present?  } 
    validates :track_file6,  if: -> { track_name6.present? || track_name7.present? || track_name8.present? || track_name9.present? || track_name10.present? || track_name11.present? || track_name12.present? || track_name13.present? || track_name14.present? || track_name15.present? || track_name16.present? || track_name17.present? || track_name18.present? || track_name19.present? || track_name20.present?  } 
    validates :track_file7,  if: -> { track_name7.present? || track_name8.present? || track_name9.present? || track_name10.present? || track_name11.present? || track_name12.present? || track_name13.present? || track_name14.present? || track_name15.present? || track_name16.present? || track_name17.present? || track_name18.present? || track_name19.present? || track_name20.present?  } 
    validates :track_file8,  if: -> { track_name8.present? || track_name9.present? || track_name10.present? || track_name11.present? || track_name12.present? || track_name13.present? || track_name14.present? || track_name15.present? || track_name16.present? || track_name17.present? || track_name18.present? || track_name19.present? || track_name20.present? } 
    validates :track_file9,  if: -> { track_name9.present? || track_name10.present? || track_name11.present? || track_name12.present? || track_name13.present? || track_name14.present? || track_name15.present? || track_name16.present? || track_name17.present? || track_name18.present? || track_name19.present? || track_name20.present?  } 
    validates :track_file10, if: -> { track_name10.present? || track_name11.present? || track_name12.present? || track_name13.present? || track_name14.present? || track_name15.present? || track_name16.present? || track_name17.present? || track_name18.present? || track_name19.present? || track_name20.present? } 
    validates :track_file11, if: -> { track_name11.present? || track_name12.present? || track_name13.present? || track_name14.present? || track_name15.present? || track_name16.present? || track_name17.present? || track_name18.present? || track_name19.present? || track_name20.present? } 
    validates :track_file12, if: -> { track_name12.present? || track_name13.present? || track_name14.present? || track_name15.present? || track_name16.present? || track_name17.present? || track_name18.present? || track_name19.present? || track_name20.present? } 
    validates :track_file13, if: -> { track_name13.present? || track_name14.present? || track_name15.present? || track_name16.present? || track_name17.present? || track_name18.present? || track_name19.present? || track_name20.present?} 
    validates :track_file14, if: -> { track_name14.present? || track_name15.present? || track_name16.present? || track_name17.present? || track_name18.present? || track_name19.present? || track_name20.present?} 
    validates :track_file15, if: -> { track_name15.present? || track_name16.present? || track_name17.present? || track_name18.present? || track_name19.present? || track_name20.present?} 
    validates :track_file16, if: -> { track_name16.present? || track_name17.present? || track_name18.present? || track_name19.present? || track_name20.present?} 
    validates :track_file17, if: -> { track_name17.present? || track_name18.present? || track_name19.present? || track_name20.present?} 
    validates :track_file18, if: -> { track_name18.present? || track_name19.present? || track_name20.present? } 
    validates :track_file19, if: -> { track_name19.present? || track_name20.present? } 
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
