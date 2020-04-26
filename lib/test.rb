require 'open-uri'
require 'nokogiri'



#base_url = "https://www.foodnetwork.com/recipes/"
#category_url = base_url + "recipes-a-z/a"

#categories_page = open(category_url)
#categories_html = categories_page.read

#parsed_categories = Nokogiri::HTML(categories_html)

urls=doc.css("#site div.l-Columns.l-Columns--2up ul li")
arr=[]
urls.each do |i|
 arr<< i.css("a").attribute('href').value
end
arr





