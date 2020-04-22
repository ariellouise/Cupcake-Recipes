
#the recipes being shown as a recipe - level 2 and child file

class fn_Recipes::Recipe
  attr_accessor :name, :category, :ingredients, :instructions

  @@recipes = []

  def self.scrape_recipes

    doc = Nokogiri::HTML(open("https://foodnetwork.com/recipes/"))

     doc.css("").collect do |dish|
       name = dish.css("").attribute("title").text
       category = dish.css("").text
       ingredients = dish.css("").text
       instructions = dish.css("").text
       recipe = self.new(name, category, instructions, ingredients)

    end
  end

  def initialize(name, type, category, instructions, ingredients)
    @name=name
    @category = category
    @instructions = instructions
    @ingredients = ingredients
    @@recipes << self
  end

  def self.all
    @@recipes.each.with_index(1) do |recipe, i|
      puts " #{i}. #{recipe.name}"
    end
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
    
