class CreateTracks < ActiveRecord::Migration[6.0]
  def change
    create_table :tracks do |t|
      t.integer :user_id,       null: false, foreign_key: true
      t.integer :tweet_id,      null: false, foreign_key: true
      t.string :track_name,     null: false
      t.string :track_file,     null: false
      t.timestamps
    end
  end
end
