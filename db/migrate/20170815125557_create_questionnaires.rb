class CreateQuestionnaires < ActiveRecord::Migration[5.1]
  def change
    create_table :questionnaires do |t|
      t.string :q1
      t.string :q2
      t.string :q3
      t.string :q4
      t.string :q5
      t.string :q6
      t.string :q7
      t.string :q8
      t.string :q9
      t.string :q10
      t.integer :pq1
      t.integer :pq2
      t.integer :pq3
      t.integer :pq4
      t.integer :pq5
      t.integer :pq6
      t.integer :pq7
      t.integer :pq8
      t.integer :pq9
      t.integer :pq10
      t.timestamps
    end
  end
end
