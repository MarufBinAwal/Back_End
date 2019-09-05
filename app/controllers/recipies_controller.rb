class RecipiesController < ApplicationController

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
        :ingredients,
        :description,
        :macros
        )
    end
end
