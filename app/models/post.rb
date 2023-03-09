class Post < ApplicationRecord
  belongs_to :user
  belongs_to :forum
  has_many :comments
  validates :content, presence: true
end
