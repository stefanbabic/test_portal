class User < ApplicationRecord
  before_save { self.email = email.downcase }
  validates :first_name, :last_name, :email, :password, presence: true
  validates :first_name, :last_name, length: { maximum: 50 }
  validates :email, uniqueness: true, length: { maximum: 255 }
  validates :password, length: { minimum: 8 }
  validates :zip, numericality: true
  has_secure_password
end
