class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :notes, :location, :completed
  has_one :user
  has_one :list
end
