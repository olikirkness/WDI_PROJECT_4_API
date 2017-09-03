class User < ApplicationRecord


  has_secure_password

  validates :username, presence: true
  validates :email, uniqueness: true

  has_and_belongs_to_many :leagues
  has_many :created_leagues, foreign_key: :created_by, class_name: "League"

  has_and_belongs_to_many :matches

  has_many :recieved_requests, foreign_key: :reciever_id, class_name: "Request"
  has_many :sent_requests, foreign_key: :sender_id, class_name: "Request"

  has_many :recieved_challenges, foreign_key: :reciever_id, class_name: "Challenge"
  has_many :sent_challenges, foreign_key: :sender_id, class_name: "Challenge"

  serialize :ranking
end
