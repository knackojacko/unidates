class CreateQuestionnaires < ActiveRecord::Migration[5.1]
  def change
    create_table :questionnaires do |t|
      t.references :question
      t.references :answer

      t.timestamps
    end
  end
end
