require 'open-uri'
require 'Nokogiri'


base_url = "https://www.foodnetwork.com/recipes/"
category_url = base_url + "recipes-a-z/a"

categories_page = open(category_url)
categories_html = categories_page.read

parsed_categories = Nokogiri::HTML(categories_html)
puts parsed_categories.class
#categories_types = parsed_categories.css("h3#a.o-Capsule__a-Headline").map(&:text)
categories_list = parsed_categories.css("a").map(&:text) 
categories_list = categories_list[70, categories_list.length - 113]
#puts categories_types.to_s
#puts categories_types.length
#puts categories_list.to_s
end