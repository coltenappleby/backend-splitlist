class ListSerializer < ActiveModel::Serializer
  attributes :id, :name, :active

  has_many :items

  # has_many :userlists
end
