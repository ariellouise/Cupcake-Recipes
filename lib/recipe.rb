#Ingredients & Instructions - needs recipe_url edited


require 'open-uri'
require 'Nokogiri'


base_url = "https://www.foodnetwork.com/recipes/"
recipe_url = base_url + "a-big-delicious-chocolate-mess-5393121"

recipe_page = open(recipe_url)
recipe_html = recipe_page.read

parsed_recipe = Nokogiri::HTML(recipe_html)
puts parsed_recipe.class
ingredients_list = parsed_recipe.css("p.o-Ingredients__a-Ingredient").map(&:text)
instructions_list = parsed_recipe.css("li.o-Method__m-Step").map(&:text)
puts ingredients_list.to_s
puts instructions_list.to_s



