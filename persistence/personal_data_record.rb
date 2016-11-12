class PersonalDataRecord < ActiveRecord::Base
  self.table_name = 'personal_data'
  belongs_to :employee, foreign_key: 'employee_id', class_name: 'EmployeeRecord'
end
