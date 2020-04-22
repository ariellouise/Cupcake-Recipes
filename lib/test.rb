require 'open-uri'
require 'Nokogiri'


base_url = "https://www.foodnetwork.com/recipes/"
recipes_url = base_url + "recipes-a-z/a"

recipes_page = open(recipes_url)
recipes_html = recipes_page.read

parsed_recipes = Nokogiri::HTML(recipes_html)
puts parsed_recipes.class
#recipes_types = parsed_recipes.css("h3#a.o-Capsule__a-Headline").map(&:text)
recipes_descriptions = parsed_recipes.css("a").map(&:text) 
recipes_descriptions = recipes_descriptions[70, recipes_descriptions.length - 113]
#puts recipes_types.to_s
#puts recipes_types.length
puts recipes_descriptions.to_s
