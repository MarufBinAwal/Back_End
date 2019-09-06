class MealplanController < ApplicationController

    def show
        mealplan = Mealplan.find(params[:id])
        render json: { mealplan: mealplan, meals: meals  }
    end

    def create
        mealplan = Mealplan.new(mealplan_params)
        mealplan.user = self.current_user 
        mealplan.save
        params[:meals].each do | meal |
            Meal.create(recipe_id: recipe[:id], mealplan_id: mealplan.id)
        end
        
        render json: mealplan
    end

    def index
        mealplan = self.current_user.mealplans
        render json: mealplans
    end

    def update
        # Locates current order
        # Save params in the database -> Update the User info
        mealplan = Mealplan.find(params[:id])
        mealplan.update(mealplan_params)
    end

    def mealplan_params
        params.permit(
        :user_id,
        :days
        )
    end
end
