class Rating < ApplicationRecord
  belongs_to :user
  belongs_to :forum

  validates :score, numericality: { in: 1..10 }
end
