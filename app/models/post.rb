class Post < ActiveRecord::Base

  # Accessible attributes
  attr_accessible :title, :body, :published

  # Validation
  validates_presence_of :title, :body
  validates_length_of :title, :in => 2..100

  # Scopes
  scope :latest_created, order("created_at DESC")

  # Pagination
  self.per_page = 15

end
