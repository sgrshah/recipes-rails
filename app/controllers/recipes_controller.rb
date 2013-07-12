class RecipesController < ApplicationController
	def index
		@recipes = Recipe.all
	end

	def create
		@recipe = Recipe.new(:name => params[:recipe][:name])
		@recipe.add_ingredients(params[:ingredients])
		@recipe.save
		redirect_to @recipe
	end

	def show
		@recipe = Recipe.find(params[:id])
	end
end
