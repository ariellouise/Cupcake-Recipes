class FN_Recipes::Recipe
  attr_accessor :name, :category, :ingredients, :instructions

  @@recipes = []

  def self.scrape_recipes

    doc = Nokogiri::HTML(open("https://foodnetwork.com/recipes/"))

     doc.css("").collect do |meal|
       name = meal.css("").attribute("title").text
       category = meal.css("").text
       ingredients = meal.css("").text
       instructions = meal.css("").text
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

  def self.featured_collection
    @featured_collection = []
    @@recipes.each do |recipe|
      if recipe.type == "Featured Collection"
        @featured_collection << recipe
      end
    end 

    #value_each.with_index(i) do |value, index| puts "#{index}: #{value}" end
    @featured_collection.each.with_index(1) do |featured_collection, i|
      puts "#{i}. #{featured_collection.name}"
      
  end

  def self.just_dinner
    @just_dinner = []
    @@recipes.each do |recipe|
      if recipe.type == "Just Dinner"
        @just_dinner << recipe
    
        @just_dinner.each.with_index(1) do |just_dinner, i|
          puts "#{i}. #{featured_collection.name}"
  end

  def self.from_the_pantry
    @@
    puts
  end
  
  def self.best_recipes
    @@
    puts
  end

  def self.trending_now
    @@
    puts
  end

  def self.smarter_not_harder
    @@
    puts
  end

