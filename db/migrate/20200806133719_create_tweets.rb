class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.string :name,                    null: false
      t.string :title,                   null: false
      t.string :artist_name,             null: false
      t.integer :price,                  null: false
      t.integer :cd_type_id,             null: false
      t.timestamps
    end
  end
end
