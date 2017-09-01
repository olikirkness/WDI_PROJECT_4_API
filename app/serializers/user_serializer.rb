class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :first_name, :last_name, :image, :ranking, :password_digest, :email
end
