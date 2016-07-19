class User < ApplicationRecord
  has_secure_password
  has_many :squares, dependent: :destroy

  validates :email, presence: true
end
