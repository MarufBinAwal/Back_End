class Mealplan < ApplicationRecord
    has_many :users
    has_many :recipies
end
