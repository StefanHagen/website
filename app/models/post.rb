class Post < ActiveRecord::Base

  # Mass Assignment
  attr_accessible :title, :body, :administrator_id, :category_id, :published

  # Relations
  belongs_to :administrator
  belongs_to :category

  # Validation
  validates_presence_of :title, :body
  validates_length_of :title, :in => 2..100

  # Scopes
  scope :latest_created, order("created_at DESC")
  scope :published, where("published = true")

  # Pagination
  self.per_page = 15

end
