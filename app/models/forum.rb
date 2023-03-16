class Forum < ApplicationRecord
  has_many :users
  has_many :posts
  has_many :ratings
  has_many :comments, through: :posts
  has_one_attached :photo
  validates :title, presence: true
  has_many :bookmarks
  has_many :lists, through: :bookmarks

  include PgSearch::Model
  pg_search_scope :search_by_title_and_creator_and_category,
  against: [ :title, :creator, :category],
  using: {
    tsearch: { prefix: true }
  }
end
