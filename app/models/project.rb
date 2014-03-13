class Project < ActiveRecord::Base
  
  # Mass Assignment
  attr_accessible :name, :description, :body

  # Validation
  validates_presence_of :name, :description, :body

  # Pagination
  self.per_page = 15

end
