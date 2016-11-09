class PositionRecord < ActiveRecord::Base
  self.table_name = 'positions'
  validates_presence_of :name, :description
end
