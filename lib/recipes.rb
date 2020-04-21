
#the recipes being shown as a recipe - level 2 and child file

class CupcakeRecipe
  @@all = []
  @@type = "recipe"

  attr_accessor :name, :url, :ingredients, :instructions

  def initialize(name, url)
    @name = name
    @url = url
    @ingredients = []
    @instructions = []
    self.class.all << self
  end
  
  def self.all
    @@all
  end 
  
  def self.get_recipe(list)
    self.scrape_all_recipes(list)
    puts "Here are all of the cupcakes recipes available to you:"
    recipe_index = Menu.display(self.type, recipes)
  end
    