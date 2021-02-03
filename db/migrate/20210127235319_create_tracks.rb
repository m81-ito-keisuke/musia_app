class CreateTracks < ActiveRecord::Migration[6.0]
  def change
    create_table :tracks do |t|
      t.integer :user_id,         null: false, foreign_key: true
      t.integer :tweet_id,        null: false, foreign_key: true
      t.string  :track_name1
      t.string  :track_file1
      t.string  :track_name2
      t.string  :track_file2
      t.string  :track_name3
      t.string  :track_file3
      t.string  :track_name4
      t.string  :track_file4
      t.string  :track_name5
      t.string  :track_file5
      t.string  :track_name6
      t.string  :track_file6
      t.string  :track_name7
      t.string  :track_file7
      t.string  :track_name8
      t.string  :track_file8
      t.string  :track_name9
      t.string  :track_file9
      t.string  :track_name10
      t.string  :track_file10
      t.string  :track_name11
      t.string  :track_file11
      t.string  :track_name12
      t.string  :track_file12
      t.string  :track_name13
      t.string  :track_file13
      t.string  :track_name14
      t.string  :track_file14
      t.string  :track_name15
      t.string  :track_file15
      t.string  :track_name16
      t.string  :track_file16
      t.string  :track_name17
      t.string  :track_file17
      t.string  :track_name18
      t.string  :track_file18
      t.string  :track_name19
      t.string  :track_file19
      t.string  :track_name20
      t.string  :track_file20
      t.timestamps
    end
  end
end
