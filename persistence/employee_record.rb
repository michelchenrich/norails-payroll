class EmployeeRecord < ActiveRecord::Base
  self.table_name = 'employees'
  has_many :action, foreign_key: 'employee_id', class_name: 'ActionRecord'
  has_many :personal_data, foreign_key: 'employee_id', class_name: 'PersonalDataRecord'
  has_many :organizational_assignments, foreign_key: 'employee_id', class_name: 'OrganizationalAssignmentRecord'

  def name
    "#{last_name}, #{first_name}"
  end

  def first_name
    latest(personal_data).first_name
  end

  def last_name
    latest(personal_data).last_name
  end

  def position
    latest(organizational_assignments).position
  end

  private

  def latest collection
    sorted = collection.sort { |x,y| x.valid_from <=> y.valid_from }
    sorted[0]
  end
end
