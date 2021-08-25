class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :phone_number

  has_many :lists
  has_many :items
end
