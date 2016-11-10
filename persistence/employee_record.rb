class EmployeeRecord < ActiveRecord::Base
  self.table_name = 'employees'
  has_many :action_records
  has_many :personal_data_records
end
