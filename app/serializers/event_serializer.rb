class EventSerializer < ActiveModel::Serializer
  attributes :id,:title,:location,:date,:headcount,:time,:img
  belongs_to :user
end
