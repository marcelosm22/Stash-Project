class Forum < ApplicationRecord
  has_many :users
  has_many :posts
  has_many :ratings
  has_many :comments, through: :posts
  has_one_attached :photo
  validates :title, presence: true
end
