class Day < ApplicationRecord
    belongs_to :mealplan
    has_many :meals
end
