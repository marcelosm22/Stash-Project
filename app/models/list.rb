class List < ApplicationRecord
  belongs_to :user
  has_many :bookmarks
  has_many :forums, through: :bookmarks, dependent: :destroy
  has_many :photos, through: :forums
  validates :title, presence: true
end
