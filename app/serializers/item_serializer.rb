class ItemSerializer < ActiveModel::Serializer
  attributes :id, :description, :completed, :created_at
end
