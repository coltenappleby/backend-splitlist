class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :phone_number

  # has_many :userlists
  has_many :items
end
