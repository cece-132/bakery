class Recipe < ApplicationRecord
  validates_presence_of :name, :id

  belongs_to :baker
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients

end
