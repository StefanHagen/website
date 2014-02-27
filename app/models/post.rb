class Post < ActiveRecord::Base

  # Accessible attributes
  attr_accessible :title, :body

  # Validation
  validates_presence_of :title, :body
  validates_length_of :title, :in => 2..100

  # Pagination
  self.per_page = 15

end
