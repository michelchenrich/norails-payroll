class AddEmployeeIdToActions < ActiveRecord::Migration[5.0]
  def change
    add_column :actions, :employee_id, :integer
  end
end
