require 'nokogiri'
require 'open-uri'



base_url = "https://www.foodnetwork.com/recipes/"
category_url = base_url + "recipes-a-z/a"

categories_page = open(category_url)
categories_html = categories_page.read

parsed_html = Nokogiri::HTML(categories_html)
puts parsed_html.class
categories_list = parsed_html.css("a:contains(' ')~ul.m-PromoList.o-Capsule_m-PromoList li.m-PromoList_a-ListItem")

