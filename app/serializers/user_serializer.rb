class UserSerializer < ActiveModel::Serializer

  attributes :id, :username, :first_name, :last_name, :image, :password_digest, :email, :created_leagues, :ranking

  has_many :leagues

  has_many :matches

  has_many :recieved_requests

  has_many :sent_requests

  has_many :recieved_challenges

  has_many :sent_challenges
end
