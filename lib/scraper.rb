require 'open-uri'
require 'nokogiri'


base_url = "https://tasty.co"
cupcakes_url = base_url + "search?q=cupcakes"


cupcakes_page = open(cupcakes_url)
cupcakes_html =cupcakes_page.read 

parsed_cupcakes = Nokogiri::(cupcakes_html)


class CupcakeRecipes
  
  
  
  
  
end