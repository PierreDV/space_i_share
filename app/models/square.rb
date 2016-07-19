class Square < ApplicationRecord
  belongs_to :user
  validates :color, presence: true
end
