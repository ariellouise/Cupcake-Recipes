#module and required

require 'nokogiri'
require 'open-uri'
require 'pry'

module CupcakeRecipes
  list = List.get_list
  recipe = CupcakeRecipes.get_recipe(list)
  recipe.print
end

require_relative "./cupcake_recipes/cupcakes"
require_relative "./cupcake_recipes/recipes"
require_relative "./cupcake_recipes/version"
