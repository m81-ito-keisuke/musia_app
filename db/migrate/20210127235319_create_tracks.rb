class CreateTracks < ActiveRecord::Migration[6.0]
  def change
    create_table :tracks do |t|
      t.integer :user_id,         null: false, foreign_key: true
      t.integer :tweet_id,        null: false, foreign_key: true
      t.integer :track_number1,   null: false
      t.string :track_name1,      null: false
      t.string :track_file1,      null: false
      t.integer :track_number2,   null: false
      t.string :track_name2,      null: false
      t.string :track_file2,      null: false
      t.integer :track_number3,   null: false
      t.string :track_name3,      null: false
      t.string :track_file3,      null: false
      t.integer :track_number4,   null: false
      t.string :track_name4,      null: false
      t.string :track_file4,      null: false
      t.integer :track_number5,   null: false
      t.string :track_name5,      null: false
      t.string :track_file5,      null: false
      t.integer :track_number6,   null: false
      t.string :track_name6,      null: false
      t.string :track_file6,      null: false
      t.integer :track_number7,   null: false
      t.string :track_name7,      null: false
      t.string :track_file7,      null: false
      t.integer :track_number8,   null: false
      t.string :track_name8,      null: false
      t.string :track_file8,      null: false
      t.integer :track_number9,   null: false
      t.string :track_name9,      null: false
      t.string :track_file9,      null: false
      t.integer :track_number10,  null: false
      t.string :track_name10,     null: false
      t.string :track_file10,     null: false
      t.integer :track_number11,  null: false
      t.string :track_name11,     null: false
      t.string :track_file11,     null: false
      t.integer :track_number12,  null: false
      t.string :track_name12,     null: false
      t.string :track_file12,     null: false
      t.integer :track_number13,  null: false
      t.string :track_name13,     null: false
      t.string :track_file13,     null: false
      t.integer :track_number14,  null: false
      t.string :track_name14,     null: false
      t.string :track_file14,     null: false
      t.integer :track_number15,  null: false
      t.string :track_name15,     null: false
      t.string :track_file15,     null: false
      t.integer :track_number16,  null: false
      t.string :track_name16,     null: false
      t.string :track_file16,     null: false
      t.integer :track_number17,  null: false
      t.string :track_name17,     null: false
      t.string :track_file17,     null: false
      t.integer :track_number18,  null: false
      t.string :track_name18,     null: false
      t.string :track_file18,     null: false
      t.integer :track_number19,  null: false
      t.string :track_name19,     null: false
      t.string :track_file19,     null: false
      t.integer :track_number20,  null: false
      t.string :track_name20,     null: false
      t.string :track_file20,     null: false
      t.timestamps
    end
  end
end
