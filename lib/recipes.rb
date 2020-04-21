
#the recipes being shown as a recipe - level 2 and child file

class CupcakeRecipe
  @@all = []
  @@type = "recipe"

  attr_accessor :name, :url, :ingredients, :instructions

  def initialize(name, url, category)
    @name = name
    @url = url
    @ingredients = []
    @instructions = []
    self.class.all << self
  end