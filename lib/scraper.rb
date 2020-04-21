require 'open-uri'
require 'nokogiri'


base_url = "https://tasty.co"
cupcakes_url = base_url + "search?q=cupcakes"


cupcakes_page = open(cupcakes_url)
cupcakes_html =cupcakes_page.read 

parsed_cupcakes = Nokogiri::(cupcakes_html)

cupcake_types = parsed_cupcakes.css("item-title xs-text-4 md-text-3 extra-bold text-gray xs-mb05").map(&:text)
cupcake_recipes = parsed_cupcakes.css

