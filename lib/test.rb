require 'open-uri'
require 'nokogiri'



#base_url = "https://www.foodnetwork.com/recipes/"
#category_url = base_url + "recipes-a-z/a"

#categories_page = open(category_url)
#categories_html = categories_page.read

#parsed_categories = Nokogiri::HTML(categories_html)
#puts parsed_categories.class

#categories_list = parsed_categories.css("a:contains('a')~ul.m-PromoList.o-Capsule_m-PromoList li.m-PromoList_a-ListItem").map(&:text) 
#categories_list = categories_list[70, categories_list.length - 113]
#puts categories_list.to_s


#ul.m-PromoList.o-Capsule_m-PromoList

#li.m-PromoList_a-ListItem
