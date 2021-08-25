class ListSerializer < ActiveModel::Serializer
  attributes :id, :name, :active

  has_many :items

  belongs_to :user
end
