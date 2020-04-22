require 'open-uri'
require 'Nokogiri'

base_url = "https://www.foodnetwork.com/"
recipes_url = base_url + "recipes/"

recipes_page = open(recipes_url)
recipes_html = recipes_page.read



#filter

parsed_recipes = Nokogiri::HTML(recipes_html)

puts parsed_recipes.class

recipes_types = parsed_recipes.css("h3")
recipes_descriptions = parsed_recipes.css("h4")

puts recipes_types.to_s
puts recipes_types.length
puts recipes_descriptions.length 



