class User < ApplicationRecord
  has_secure_password
validates :email, presence: true, uniqueness: true
has_many :woofs
has_many :followers, foreign_key: "followed_id", class_name: "Relationship"
has_many :following, foreign_key: "follower_id", class_name: "Relationship"
end
