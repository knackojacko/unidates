class CreateQuestonnaires < ActiveRecord::Migration[5.1]
  def change
    create_table :questonnaires do |t|

      t.timestamps
    end
  end
end
