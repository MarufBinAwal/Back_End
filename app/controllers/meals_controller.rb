class MealsController < ApplicationController

    def show
        mealplan = Mealplan.find(params[:id])
        render json: mealplan
    end

    def create
        meal = Meal.new(meal_params)
        meal.mealplan = self.id
        meal.recipe = self.id
        meal.save
        render json: mealplan
    end


    def index
        meal = Meal.all
        render json: meal
    end

    def update
        # Locates current order_item
        # Save params in the database -> Update the User info
        meal = Meal.find(params[:id])
        meal.update(meal_params)
    end

    def meal_params
        params.permit(
        :mealplan_id,
        :recipe_id
        )
    end
    
end
