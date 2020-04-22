require 'open-uri'
require 'Nokogiri'


base_url = "https://www.foodnetwork.com/recipes/"
ingredient_url = base_url + "a-big-delicious-chocolate-mess-5393121"

ingredients_page = open(ingredient_url)
ingredients_html = ingredients_page.read

parsed_ingredients = Nokogiri::HTML(ingredients_html)
puts parsed_ingredients.class
ingredients_list = parsed_ingredients.css("p.o-Ingredients__a-Ingredient").map(&:text)

puts ingredients_list.to_s


