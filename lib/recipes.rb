
#the recipes being shown as a recipe - level 2 and child file

class Recipe
  @@all = []
  @@type = "recipe"

  attr_accessor :name, :category, :url, :ingredients, :instructions

  def initialize(name, category, url)
    @name = name
    @category = category
    @url = url
    @ingredients = []
    @instructions = []
    self.class.all << self
  end
  
  def self.all
    @@all
  end 
  
  def self. type
    @@type
  end

  def self.get_recipe(category)
    self.scrape_all_recipes(category)
    puts " You chose #{category.name} recipes:"
    recipe_index = Menu.display(self.type, category, recipes)
    recipe = category.recipes[recipe_index]
  end
    
  def self.scrape_all_recipes(category)
   doc = Nokogiri::HTML(open(category.url))
   posts = doc.css("div.tve_post")
   
   posts.each do |post|
    name = post.css(").text
    url = post.css("a").attr("href").value
    recipe = self.new(name, url, category)
   end
  end
  
  def print
   self.get_complete_recipe
   puts "\n#{self.name} (#{self.category.name})"
   puts "\nIngredients:"
   self.ingredients.each do |ingredient|
     puts (ingredient)
   end
   puts "\nInstructions:"
   self.instructions.each_with_index do |instruction, index|
     puts "#{index + 1}. #{instruction}"
   end 
  end
  
  def get_complete_recipe
    doc = Nokogiri::HTML(open(self.url))
    ingredients_data = doc.css("")
    ingredients_data.each do |ingredient|
      amount = ingredient.css("")
      unit = ingredient.css("")
      name = ingredient.css("")
      end
      self.ingredients.push("#{amount} #{unit} #{name}")
    end
    
    instructions_data = doc.css("")
    instructions_data.each do |instructions|
      self.instructions.push(instruction.text)
    end
    
