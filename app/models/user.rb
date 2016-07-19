class User < ApplicationRecord
  has_secure_password
  has_many :squares

  validates :email, presence: true
end
