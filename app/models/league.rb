class League < ApplicationRecord

  belongs_to :creator, foreign_key: :created_by, class_name: "User"
  has_and_belongs_to_many :users

  has_many :matches
end