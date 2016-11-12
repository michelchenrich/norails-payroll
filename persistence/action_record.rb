class ActionRecord < ActiveRecord::Base
  self.table_name = 'actions'
  belongs_to :employee, foreign_key: 'employee_id', class_name: 'EmployeeRecord'  
end
