class MatchSerializer < ActiveModel::Serializer

  belongs_to :league
  attributes :id, :score, :played
  has_many :users


end
