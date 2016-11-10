class CreateActions < ActiveRecord::Migration[5.0]
  def change
    create_table :actions do |t|
      t.date :date
      t.integer :type
      t.text :reason
      t.timestamps
    end
  end
end
