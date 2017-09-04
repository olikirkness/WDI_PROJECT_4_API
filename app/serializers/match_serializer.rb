class MatchSerializer < ActiveModel::Serializer

  belongs_to :league
  attributes :id, :score, :played, :league, :users, :created_at, :updated_at, :player_one_score, :player_two_score, :player_two_change, :player_one_change, :player_one_rank_change, :player_two_rank_change
  has_many :users
  # belongs_to :player_1, foreign_key: :player_1, class_name: "User"
  # belongs_to :player_2, foreign_key: :player_2, class_name: "User"

end
