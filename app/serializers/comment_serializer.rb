class CommentSerializer < ActiveModel::Serializer
  attributes :id, :body, :sender_id, :league_id, :sender
end
