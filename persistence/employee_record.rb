class EmployeeRecord < ActiveRecord::Base
  self.table_name = 'employees'
  has_many :action, foreign_key: 'employee_id', class_name: 'ActionRecord'
  has_many :personal_data, foreign_key: 'employee_id', class_name: 'PersonalDataRecord'
  has_many :organizational_assignments, foreign_key: 'employee_id', class_name: 'OrganizationalAssignmentRecord'
end
