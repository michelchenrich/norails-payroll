class AddEmployeeIdToPersonalData < ActiveRecord::Migration[5.0]
  def change
    add_column :personal_data, :employee_id, :integer
  end
end
