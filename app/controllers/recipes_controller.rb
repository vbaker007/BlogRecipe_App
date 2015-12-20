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
     #@recipe.chef = Chef.find(:chef_id)
      if @recipe.save
        flash[:success] = "Your recipe was created successfully"
        redirect_to recipes_path
      else
        render :new
      end
  end

  def edit
  end

  private
  
    def recipe_params
      params.require(:recipe).permit(:name, :summary, :description)
    end
end