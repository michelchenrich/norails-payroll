class CreatePersonalData < ActiveRecord::Migration[5.0]
  def change
    create_table :personal_data do |t|
      t.date :valid_from
      t.string :first_name
      t.string :last_name
      t.string :ssn
      t.integer :marital_status
      t.integer :dependents
      t.timestamps
    end
  end
end
