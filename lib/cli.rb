require 'open-uri'
require 'nokogiri'


base_url = "https://www.foodnetwork.com/recipes/"
category_url = base_url + "recipes-a-z/a"
recipe_url = base_url + "a-big-delicious-chocolate-mess-5393121"

categories_page = open(category_url)
categories_html = categories_page.read

recipe_page = open(recipe_url)
recipe_html = recipe_page.read


parsed_categories = Nokogiri::HTML(categories_html)
parsed_recipe = Nokogiri::HTML(recipe_html)


categories_list = parsed_categories.css("a").map(&:text) 
categories_list = categories_list[70, categories_list.length - 113]

ingredients_list = parsed_recipe.css("p.o-Ingredients__a-Ingredient").map(&:text)
instructions_list = parsed_recipe.css("li.o-Method__m-Step").map(&:text)



class RecipeComponent

    @@all = [ ]

    def self.

    def self.
    end
    


attr_reader :name, :ingredients, :instructions

def initialize(name, ingredients, instructions)
  @name, @ingredients, @instructions = name, ingredients, instructions
  @@all << self
end


##all in parent class has all components mixed
class Ingredients <RecipeComponent
class Instructions <RecipeComponent


#class for my recipe
class Recipe


