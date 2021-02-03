class ChangeTweetsToMusics < ActiveRecord::Migration[6.0]
  def change
    rename_table :tweets, :musics
  end
end
