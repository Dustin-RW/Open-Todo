class List < ActiveRecord::Base
  validates_presence_of :name
  validates :name, length: { minimum: 5, maximum: 50}

  belongs_to :user

  has_many :items

end
