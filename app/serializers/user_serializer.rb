class UserSerializer < ActiveModel::Serializer
  attributes :id, :login, :email, :name
end
