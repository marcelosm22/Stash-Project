class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :forum

  validates :forum_id, uniqueness: {scope: :list_id}

end
