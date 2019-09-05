class RecipiesController < ApplicationController
    skip_before_action :define_current_user, only: [:index, :show]

    def create
        recipe = Recipe.create(recipe_params)
        render json: mealplan
    end
    
    def index
        recipies = Recipe.all
        render json: recipies
    end

    def show
        recipe = Recipe.find(params[:id])
        render json: recipe
    end
    

    def update
        # Locates current item
        # Save params in the database -> Update the User info
        recipe = Recipe.find(params[:id])
        recipe.update(recipe_params)
    end


    def recipe_params
        params.permit(
        :name,
        :img,
        :ingredients,
        :intructions,
        :calories,
        :fat,
        :carbohydrates,
        :protein,
        :fiber,
        :servings 
        )
    end
end
