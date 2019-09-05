class Recipe < ApplicationRecord
    has_many :meals
    has_many :mealplans, through: :meals
end
