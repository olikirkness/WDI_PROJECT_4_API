class MatchSerializer < ActiveModel::Serializer

  belongs_to :league
  attributes :id, :score, :played, :league, :users
  has_many :users


end
