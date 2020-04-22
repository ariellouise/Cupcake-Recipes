require 'open-uri'
require 'Nokogiri'


#base_url = "https://www.foodnetwork.com/recipes/"
#recipes_url = base_url + "recipes-a-z"

#recipes_page = open(recipes_url)
#recipes_html = recipes_page.read

#parsed_recipes = Nokogiri::HTML(recipes_html)
#puts parsed_recipes.class
#recipes_types = parsed_recipes.css("h3").map(&:text)
#recipes_types = parsed_recipes.css().map
#recipes_descriptions = parsed_recipes.css("h4").map(&:text)
#puts recipes_types.to_s
#puts recipes_types.length
#puts recipes_descriptions.to_s


def self.scrape_a_recipes

    doc = Nokogiri::HTML(open("https://foodnetwork.com/recipes/recipes-a-z/a"))

     doc.css("m-PromoList__a-ListItem").collect do |meal|
       name = meal.css("a").attribute("href").text
       category = meal.css("h3").text
       recipe = self.new(name, category)

    end

    puts name.to_s
    puts name.length
    puts category.to_s
end    
