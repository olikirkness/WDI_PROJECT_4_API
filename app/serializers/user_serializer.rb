class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :first_name, :last_name, :image, :ranking, :password_digest, :email, :created_leagues
  has_many :leagues
  has_many :matches
end
