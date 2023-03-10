class List < ApplicationRecord
  belongs_to :user
  has_many :bookmarks
  has_many :forums, through: :bookmarks, dependent: :destroy
  validates :title, presence: true
end
