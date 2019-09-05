class Mealplan < ApplicationRecord
    belongs_to :user
    recipies:references
end
