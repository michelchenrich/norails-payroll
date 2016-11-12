class PositionRecord < ActiveRecord::Base
  self.table_name = 'positions'
  validates_presence_of :name, :description
  has_many :organizational_assignments, class_name: 'OrganizationalAssignmentRecord'
  has_many :employees, through: :organizational_assignments
end
