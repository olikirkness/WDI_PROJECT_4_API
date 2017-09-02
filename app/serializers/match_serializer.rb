class MatchSerializer < ActiveModel::Serializer
  
  belongs_to :league
  attributes :id, :score
  has_many :users


end
