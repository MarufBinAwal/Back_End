class Mealplan < ApplicationRecord
    belongs_to :user
    has_many :meals
    has_many :recipies through: :meals
    validates :macros_total, presence: true
end
