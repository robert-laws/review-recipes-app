# Trisha Yearwood's Blueberry Pancakes Recipe
# http://www.foodnetwork.com/recipes/trisha-yearwood/blueberry-pancakes-recipe.html

RecipeIngredient.delete_all
Recipe.delete_all
Ingredient.delete_all

blueberry_pancakes = Recipe.new(name: 'Blueberry Pancakes')
blueberry_pancakes_ingredients = ['All-purpose flour', 'Sugar', 'Baking powder']
blueberry_pancakes_ingredients.each{|i| blueberry_pancakes.ingredients.build(name: i)}
blueberry_pancakes.save

# Jake the Dog's Bacon Pancakes Recipe
# https://www.youtube.com/watch?v=1eO5U_uN7DQ

bacon_pancakes = Recipe.new(name: 'Bacon Pancakes')
bacon_pancakes_ingredients = ['Some bacon', 'Pancake']
bacon_pancakes_ingredients.each{|i| bacon_pancakes.ingredients.build(name: i)}
bacon_pancakes.save