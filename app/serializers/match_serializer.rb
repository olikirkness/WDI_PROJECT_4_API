class MatchSerializer < ActiveModel::Serializer

  belongs_to :league
  attributes :id, :score, :played, :league, :users, :created_at, :updated_at
  has_many :users


end
