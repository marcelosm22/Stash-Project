class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :photo
  has_many :followings_as_follower, class_name: "Following", foreign_key: :follower_id
  has_many :followings_as_followed, class_name: "Following", foreign_key: :followed_id
end
