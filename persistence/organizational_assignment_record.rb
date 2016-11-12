class OrganizationalAssignmentRecord < ActiveRecord::Base
  self.table_name = 'organizational_assignments'
  belongs_to :employee, foreign_key: 'employee_id', class_name: 'EmployeeRecord'
  belongs_to :position, foreign_key: 'position_id', class_name: 'PositionRecord'
end
