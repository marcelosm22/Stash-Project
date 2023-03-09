class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates :comment_content, presence: true
end
