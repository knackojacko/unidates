class CreateReports < ActiveRecord::Migration[5.1]
  def change
    create_table :reports do |t|
      

      t.string :problem
      t.integer :reported_user_id
      
      t.timestamps
    end
  end
end
