class User < ApplicationRecord
  validates :name, :email, presence: true
  validates :email, uniqueness: true
  validates :email, email: true
  validates_confirmation_of :password

  has_secure_password validations: false
end
