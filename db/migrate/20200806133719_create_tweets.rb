class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.string :name,                    null: false
      t.string :title,                   null: false
      t.string :artist_name,             null: false
      t.integer :price,                  null: false
      t.integer :cd_type_id,             null: false
      t.string :music_title1,            null: false
      t.string :music_file1,             null: false
      t.string :music_title2
      t.string :music_file2
      t.string :music_title3
      t.string :music_file3
      t.string :music_title4
      t.string :music_file4
      t.string :music_title5
      t.string :music_file5
      t.string :music_title6
      t.string :music_file6
      t.string :music_title7
      t.string :music_file7
      t.string :music_title8
      t.string :music_file8
      t.string :music_title9
      t.string :music_file9
      t.string :music_title10
      t.string :music_file10
      t.string :music_title11
      t.string :music_file11
      t.string :music_title12
      t.string :music_file12
      t.string :music_title13
      t.string :music_file13
      t.string :music_title14
      t.string :music_file14
      t.string :music_title15
      t.string :music_file15
      t.string :music_title16
      t.string :music_file16
      t.string :music_title17
      t.string :music_file17
      t.string :music_title18
      t.string :music_file18
      t.string :music_title19
      t.string :music_file19
      t.string :music_title20
      t.string :music_file20
      t.timestamps
    end
  end
end
