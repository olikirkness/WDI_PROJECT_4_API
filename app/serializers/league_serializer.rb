class LeagueSerializer < ActiveModel::Serializer
  has_many :users
  attributes :id, :title, :image, :users
  belongs_to :creator, foreign_key: :created_by, class_name: "User"
  has_many :matches
end
