require 'open-uri'


base_url = "https://www.foodnetwork.com/"
recipes_url = base_url + "recipes"


page = open(recipes_url) #return instance of a tempfile class

puts page.class
puts page.content_type
#puts page.read
puts page.read.class




html_text = page.read #return html as a ruby string







