require_relative '../environment'
Environment.new.setup_persistance

PositionRecord.new(name: 'Developer', description: 'Expected to write bugs, oops, I mean code').save
PositionRecord.new(name: 'Senior Developer', description: 'Expected to not write any code at all').save
craftsperson = PositionRecord.new(name: 'Craftsperson', description: 'Expected to write software')
craftsperson.save
PositionRecord.new(name: 'Master Craftsperson', description: 'Expected to write and teach others to write software').save

employee = EmployeeRecord.new
employee.save
ActionRecord.new(employee: employee, valid_from: Date.today, code: 1).save
PersonalDataRecord.new({
  employee: employee, 
  valid_from: Date.today, 
  first_name: 'Michel', 
  last_name: 'Henrich',
  ssn: '811.634.790-04',
  marital_status: 0,
  dependents: 0
}).save
OrganizationalAssignmentRecord.new(valid_from: Date.today, employee: employee, position: craftsperson).save
