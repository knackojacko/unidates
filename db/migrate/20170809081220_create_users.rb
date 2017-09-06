class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :gender
      t.string :preference
      t.date :dob
      t.boolean  "is_admin",        default: false
      t.timestamps
    end
  end
end
