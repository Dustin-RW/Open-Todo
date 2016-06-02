class User < ActiveRecord::Base

  validates_presence_of :full_name, :password
  validates :full_name, length: { minimum: 2 }

  has_many :lists
  has_many :items

end
