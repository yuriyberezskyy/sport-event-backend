class UserSerializer < ActiveModel::Serializer
  attributes :id,:name,:email,:password,:pic
 
end