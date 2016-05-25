class ListSerializer < ActiveModel::Serializer
  attributes :id, :name, :permissions, :created_at
end
