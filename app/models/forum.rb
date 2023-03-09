class Forum < ApplicationRecord
  has_many :users
  has_many :posts
  has_many :ratings
  has_many :comments, through: :posts
  validates :title, presence: true
end
