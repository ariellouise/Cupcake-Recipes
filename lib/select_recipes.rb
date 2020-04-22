require 'open-uri'
require 'Nokogiri'


base_url = "https://www.foodnetwork.com/recipes/"
category_url = base_url + "recipes-a-z/a"

categories_page = open(category_url)
categories_html = categories_page.read

parsed_categories = Nokogiri::HTML(categories_html)
puts parsed_categories.class
categories_types = parsed_categories.css("h3#a.o-Capsule__a-Headline").map(&:text)
#recipes_descriptions = parsed_categoriess.css("a").map(&:text) 
#recipes_descriptions = recipes_descriptions[70, recipes_descriptions.length - 113]
puts categories_types.to_s
puts categories_types.length
#puts recipes_descriptions.to_s