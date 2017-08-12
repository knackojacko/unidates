class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.references :answer1
      t.references :answer2

      t.timestamps
    end
  end
end
