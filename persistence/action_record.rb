class ActionRecord < ActiveRecord::Base
  self.table_name = 'actions'
  belongs_to :employee_record, foreign_key: 'employee_id'  
end
