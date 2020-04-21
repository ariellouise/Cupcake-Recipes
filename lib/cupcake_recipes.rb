require 'nokogiri'
require 'open-uri'

module CupcakeRecipes
  list = List.get_list
  recipe = CupcakeRecipes.get_recipe(list)
  recipe.print
end

require_relative "./cupcake_recipes/recipes"
require_relative "./cupcake_recipes/scraper"
require_relative "./cupcake_recipes/version"
require_relative "./cupcake_recipes/cli"