class RecipeIngredient < ApplicationRecord
   validates_presence_of :id, :recipe_id, :ingredient_id

   belongs_to :recipe
   belongs_to :ingredient

end