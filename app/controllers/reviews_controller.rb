class ReviewsController < ApplicationController
  before_action :require_user, except: [:show]
    
    def create
      @recipe = Recipe.find(params[:recipe_id])
      @review = @recipe.reviews.new(review_params)
      @review.chef = current_user
      
      respond_to do |format|
        if @review.save
          flash[:success] = 'Your Review was successfully created.'
          format.html { redirect_to @recipe }
        else
          flash[:danger] = "Your review must be between 10 and 500 characters long."
          format.html {redirect_to :back}
        end
      end
    end
  
  private
    def review_params
      params.require(:review).permit(:recipe_id, :summary, :description, :chef_id)
    end
  
end

