class Scraper

    def self.scrape_fn_recipes
        cupcake_recipes = Nokogiri::HTML(open("https://www.foodnetwork.com/"))

        cupcake_recipes.css("").each do |recipe|
            new_recipe = Recipe.new
      new_recipe.name = recipe.css("").text
      new_recipe.description = recipe.css("").text
      new_recipe.url = "https://www.foodnetwork.com/" + recipe.css("").attribute("href").value
      new_recipe.save
    end



