class Scraper

    def self.scrape_cupcake_recipes
        cupcake_recipes = Nokogiri::HTML(open("https://www.foodnetwork.com/search/cupcakes-"))

        cupcake_recipes.css("item-title xs-text-4 md-text-3 extra-bold text-gray xs-mb05").each do |recipe|
            new_recipe = Recipe.new
      new_recipe.name = recipe.css("item-title xs-text-4 md-text-3 extra-bold text-gray xs-mb05").text
      new_recipe.description = recipe.css("").text
      new_recipe.url = "https://www.foodnetwork.com/" + recipe.css("item-title xs-text-4 md-text-3 extra-bold text-gray xs-mb05").attribute("href").value
      new_recipe.save
    end



