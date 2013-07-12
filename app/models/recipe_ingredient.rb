class RecipeIngredient < ActiveRecord::Base
  attr_accessible :ingredient, :recipe
  belongs_to :ingredient
  belongs_to :recipe
end
