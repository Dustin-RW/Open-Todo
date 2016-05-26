class Item < ActiveRecord::Base

  belongs_to :user
  belongs_to :list

  validates :description, presence: true
  validates :description, length: { minimum: 2, maximum: 500 }
end
