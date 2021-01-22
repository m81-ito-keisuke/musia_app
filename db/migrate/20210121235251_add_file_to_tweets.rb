class AddFileToTweets < ActiveRecord::Migration[6.0]
  def change
    add_column :tweets, :file, :string
  end
end
