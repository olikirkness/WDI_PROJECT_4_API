class User < ApplicationRecord

  has_secure_password
  validates :username, presence: true
  validates :email, uniqueness: true

  has_and_belongs_to_many :leagues
  has_many :created_leagues, foreign_key: :created_by, class_name: "League"

  has_and_belongs_to_many :matches
end
