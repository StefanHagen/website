class Administrator < ActiveRecord::Base

  # Password
  has_secure_password

  # Mass Assignment
  attr_accessible :name, :email, :password, :password_confirmation

  # Relations
  has_many :posts
  
end
