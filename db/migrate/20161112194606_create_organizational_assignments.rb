class CreateOrganizationalAssignments < ActiveRecord::Migration[5.0]
  def change
    create_table :organizational_assignments do |t|
      t.date :valid_from
      t.integer :employee_id
      t.integer :position_id
      t.timestamps
    end
  end
end
