class Square < ApplicationRecord
  belong_to :user
  validates :color, presence: true
end
