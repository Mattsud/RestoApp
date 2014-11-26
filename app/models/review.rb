 class Review < ActiveRecord::Base
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: %w(0 1 2 3 4 5),
    message: "%{value} is not a valid rating"}
end
