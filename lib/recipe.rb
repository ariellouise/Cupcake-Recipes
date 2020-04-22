#Ingredients & Instructions - needs recipe_url edited


require 'open-uri'
require 'Nokogiri'


base_url = "https://www.foodnetwork.com/recipes/"
recipe_url = base_url + "a-big-delicious-chocolate-mess-5393121"

recipe_page = open(recipe_url)
recipe_html = recipe_page.read

parsed_recipe = Nokogiri::HTML(recipe_html)
puts parsed_recipe.class
ingredients_list = parsed_recipe.css("p.o-Ingredients__a-Ingredient").map(&:text)
instructions_list = parsed_recipe.css("li.o-Method__m-Step").map(&:text)
puts ingredients_list.to_s
puts instructions_list.to_s



class Recipe
  attr_reader :name, :ingredients, :instructions
      
  def initialize(name, ingredients, instructions)
    @name, @ingredients, @instructions = name, ingredients, instructions
    @@all << self
  end
      
  def to_s
    "Recipe: #{self.name}. Ingredients: #{self.ingredients.name}. Ingredients: #{self.instructions.name}."
  end
      
  def description
    puts "#{self}: \n #{self.name}: \n #{self.ingredients.name}: \n #{self.instructions.name}."
  end


  def scrape_all_recipes(list)
    recipe_url = "https://www.foodnetwork.com/recipes/recipes-a-z/a" + ""
    parsed_categories = Nokogiri::HTML(recipe_html)
    puts parsed_recipes.class
    ingredients_list = parsed_recipe.css("p.o-Ingredients__a-Ingredient").map(&:text)
    instructions_list = parsed_recipe.css("li.o-Method__m-Step").map(&:text)
    puts ingredients_list.to_s
    puts instructions_list.to_s
  end

