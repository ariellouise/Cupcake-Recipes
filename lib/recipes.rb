
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
    
  def self.scrape_all_recipes(list)
   doc = Nokogiri::HTML(open(list.url))
   posts = deoc.css(div.tve_post")
   
   posts.each do |post|
    name = (item-title xs-text-4 md-text-3 extra-bold text-gray xs-mb05").text
    url = post.css("a").attr("href").value
    recipe = self.new(name, url)
   end
  end
  
  def print
   self.get_complete_recipe
   puts "\n(self.name)"