class UserSerializer < ActiveModel::Serializer
  attributes :id, :username

  has_many :entries
end
