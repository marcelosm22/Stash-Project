class Forum < ApplicationRecord
  has_many :users
  has_many :posts
  has_many :ratings
  has_many :comments, through: :posts
  validates :title, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_title_and_description_and_category,
  against: [ :title, :description, :category],
  using: {
    tsearch: { prefix: true }
  }
end
