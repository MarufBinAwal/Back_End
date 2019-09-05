class Recipe < ApplicationRecord
    belongs_to :mealplan
    has_many :users, through: :mealplan
end
