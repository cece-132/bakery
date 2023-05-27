class Baker < ApplicationRecord
  validates_presence_of :name, :id
  has_many :recipes
end
