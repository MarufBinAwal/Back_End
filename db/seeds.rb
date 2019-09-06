# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# users
u1 = User.create(username: 'Maruf', password: '123456')
u2 = User.create(username: 'Varvara', password: '123456')

d1 = Mealplan.create(days: 'Monday', user_id: u1.id)
Mealplan.create(days: 'Tueday', user_id: u1.id)
Mealplan.create(days: 'Wednesday', user_id: u1.id)
Mealplan.create(days: 'Thursday', user_id: u1.id)
Mealplan.create(days: 'Friday', user_id: u1.id)
Mealplan.create(days: 'Saturday', user_id: u1.id)
Mealplan.create(days: 'Sunday', user_id: u1.id)


r1 = Recipe.create(name:"Eggs and Bacon",
img:"https://s3.amazonaws.com/rtacabinet/recipes/beta/wp-content/uploads/2017/10/28151038/5.jpg",
 ingredients:"2 eggs, 2 slice of bacon", 
 instructions:"In an unheated skillet, place 2 strips of bacon. Increase the heat to medium and let the bacon cook for 8 minutes, flipping halfway through. While the bacon cooks, prepare your skull eggs.\nHeat a pan over medium-high heat and add the skull egg mold. Spray the pan and mold with cooking spray and let it heat for 1 minute. Crack one egg into the eye of the mold and then crack another egg into the second eye. Season with salt & pepper and cover the pan. Let the eggs cook, covered, for 4 minutes, or until desired doneness of the egg yolk. Remove the cover, lift the mold and plate your eggs. Add the bacon to your plate for a deathly delicious breakfast.",
 calories: 350,
 fat: 28,
carbohydrates: 2,
protein: 21,
fiber: 0,
servings: 1)

r2 = Recipe.create(name:"Tuna Avocado Salad",img:"https://images.eatthismuch.com/site_media/img/924619_Tahirah_Fo_Ferah_be330bb4-505c-4ea2-b074-26ad678577a2.jpg", ingredients:"1/4 avocado, 3oz tuna", instructions:"Using a fork, mash up the tuna really well until the consistency is even. Mix in the avocado until smooth. Add salt and pepper to taste. Enjoy!",calories: 124, fat: 6,
carbohydrates: 4,
protein: 15,
fiber: 3,
servings: 1)

Meal.create(mealplan_id: d1.id, recipe_id: r1.id, name: "Breakfast")




