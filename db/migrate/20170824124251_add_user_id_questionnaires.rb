class AddUserIdQuestionnaires < ActiveRecord::Migration[5.1]
  def change
    add_column :questionnaires, :user_id, :integer
  end
end
