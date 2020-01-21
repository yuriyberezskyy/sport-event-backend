class ParticipationSerializer < ActiveModel::Serializer
  attributes :id,:haveParticipated
  belongs_to :user
  belongs_to :event
end
