class Match < ApplicationRecord
  belongs_to :league

  has_and_belongs_to_many :users
  # has_one :playerOne, foreign_key: :player_1, class_name: "User"
  # has_one :playerTwo, foreign_key: :player_2, class_name: "User"

  serialize :score
  serialize :player_one_rank_change
  serialize :player_two_rank_change
end
