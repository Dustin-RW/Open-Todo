class List < ActiveRecord::Base
  validates_presence_of :name
  validates :name, length: { minimum: 5, maximum: 50}
  validates :permissions, presence: true

  belongs_to :user

  has_many :items

  def permissions
    self[:permissions] ? 'private' : 'public'
  end

  def permissions=(val)
    self[:permissions] = !(val.downcase == 'public')
  end
end
