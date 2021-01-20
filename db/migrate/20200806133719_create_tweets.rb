class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.string :name
      t.string :title
      t.string :artist_name
      t.text :image
      t.integer :price
      t.integer :cd_type
      t.timestamps
    end
  end
end
