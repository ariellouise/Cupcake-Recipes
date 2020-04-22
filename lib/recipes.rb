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
    @@
    puts
  end

  def self.just_dinner
    @@
    puts
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

  