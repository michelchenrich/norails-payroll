class PersonalDataRecord < ActiveRecord::Base
  self.table_name = 'personal_data'
  belongs_to :employee_record, foreign_key: 'employee_id'
end
