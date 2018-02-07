class User < ApplicationRecord
  has_secure_password

  validates_presence_of :name, :email
  validates :email, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/ }
end
