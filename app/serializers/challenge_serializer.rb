class ChallengeSerializer < ActiveModel::Serializer
  attributes :id, :sender_id, :reciever_id, :league, :sender, :receiver
  belongs_to :league
  belongs_to :sender, foreign_key: :sender_id, class_name: "User"
  belongs_to :receiver, foreign_key: :reciever_id, class_name: "User"
end
