class Recipe < ActiveRecord::Base
  attr_accessible :name
  has_many :recipe_ingredients
  has_many :ingredients, :through => :recipe_ingredients

  # def add_ingredients(ingredient_names)
	 #  ingredient_names.each do |ingredient_name|
		# 		@recipe.ingredients.build(:name => ingredient_name)
		# end
		# @recipe.save

	def add_ingredients(ingredient_names)
		ingredient_names.uniq.delete_if{|item| item==""}.each do |ingredient_name|
			ingredient = Ingredient.where(:name => ingredient_name).first_or_create
			self.recipe_ingredients.build(:ingredient => ingredient)
		end
	end

#params with name of recipe
#params with names of ingredients
#assign name of recipe to @recipe.name
#create ingredients and assign names if the ingredient is new.
##This involves checking to see if ingredient already exists.
##This will use the Ingredient.where function.
#assign names of ingredients to those ingredients
#

end
