class EmployeeFactory
  def self.make_all
    EmployeeRecord.all.map { |each| convert each }
  end
  
  def self.make employee_id
    convert EmployeeRecord.find(employee_id) 
  end

  private

  def self.convert record
    personal_data = latest(record.personal_data)
    organizational_assignment = latest(record.organizational_assignments)
    Employee.new record.id, personal_data.first_name, personal_data.last_name, organizational_assignment.position
  end

  def self.latest time_dependent_records
    sorted = time_dependent_records.sort { |x,y| x.valid_from <=> y.valid_from }
    sorted[0]
  end
end
