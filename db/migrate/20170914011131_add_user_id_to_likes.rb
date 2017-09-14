class AddUserIdToLikes < ActiveRecord::Migration[5.1]
  def change
    add_column :match_or_likes, :user_id, :integer
  end
end
