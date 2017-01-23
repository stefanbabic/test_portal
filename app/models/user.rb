class User < ApplicationRecord
  validates :first_name, :last_name, :email, :password, presence: true
  validates :email, uniqueness: true
  validates :password, length: { minimum: 8 }
  validates :zip, numericality: true
  has_secure_password
end
