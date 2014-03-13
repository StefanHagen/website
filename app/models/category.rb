class Category < ActiveRecord::Base
  
  # Mass Assignment
  attr_accessible :name, :key, :published, :published_on

  # Relations
  has_many :posts

  # Validation

  # Pagination
  self.per_page = 15

  # Scopes
  scope :published, where("published = true")
end
