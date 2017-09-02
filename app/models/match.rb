class Match < ApplicationRecord
  belongs_to :league
  has_and_belongs_to_many :users
  serialize :score
end
