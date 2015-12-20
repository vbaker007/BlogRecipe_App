class RecipesController < ApplicationController 
  
  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create
     @recipe = Recipe.new(recipe_params)
     if @recipe.save
       redirect_to recipes_path
     else
       render :new
     end
  end

  private
  def recipe_params
    params.require(:recipe).permit(:chefid, :name, :description, :summary)
  end
end