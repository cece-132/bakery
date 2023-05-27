class RecipeIngredient < ApplicationRecord
   validates_presence_of :recipe_id, :ingredient_id

   belongs_to :recipe
   belongs_to :ingredient

end