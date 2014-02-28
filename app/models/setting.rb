class Setting < ActiveRecord::Base
  
  # Mass assignment
  attr_accessible :name, :key, :value

  # Validation
  validates_presence_of :key, :value

  # Pagination
  self.per_page = 15

end
