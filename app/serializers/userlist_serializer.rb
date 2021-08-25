class UserlistSerializer < ActiveModel::Serializer
  attributes :id, :owner, :editor, :viewer
  has_one :user
  has_one :list
end
