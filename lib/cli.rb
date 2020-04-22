class FN-Recipes::CLI
  attr_accessor :name, :type, :instructions

def call
 puts ""
 puts "Hello!"
 menu
 goodbye
end

def list_best_recipes
 @recipes ||= FN-Recipes::Recipe.scrape_recipes
 @recipes_best_recipes = FN-Recipes::Recipe.best_recipes
end

def list_from_the_pantry
 @recipes ||= FN-Recipes::Recipe.scrape_recipes
 @recipes_from_the_pantry = FN-Recipes::Recipe.from_the_pantry
end


def list_trending_now
 @recipes ||= FN-Recipes::Recipe.scrape_recipes
 @recipes_trending_now = FN-Recipes::Recipe.trending_now
end

def list_smarter_not_harder
 @recipes ||= FN-Recipes::Recipe.scrape_recipes
 @recipes_smarter_not_harder = FN-Recipes::Recipe.smarter_not_harder
end

 def list_just_dinner
   @recipes ||= FN-Recipes::Recipe.scrape_recipes
   @recipes_just_dinner = FN-Recipes::Recipe.just_dinner
 end

 def list_featured_collection
   @recipes ||= FN-Recipes::Recipe.scrape_recipes
   @recipes_featured_collection = FN-Recipes::Recipe.featured_collection
 end

 def exit
   puts ""
   puts "Thank you for trying the application!"
 end


def menu

 input_1 = ""
 input = ""
 puts "Type 1 for a list of 'Our Best Recipes'."
 puts "Type 2 for a list of 'From The Pantry' recipes. "
 puts "Type 3 for a list of 'Trending Now' recipes."
 puts "Type 4 for a list of 'Smarter, Not Harder' recipes."
 puts "Type 5 for a list of 'Just Dinner' recipes."
 puts "Type 6 for a list of 'Featured Collection' recipes."
 puts "Type exit to end"
 puts ""
 input_1 = gets.strip

 case  input_1
    when "1"
     puts ""
     puts "Our Best Recipe List"
     list_best_recipes
     puts ""
     puts "To see more detailed information, please choose a recipe."
          input = gets.strip
         recipe_choice(input_1, input)
         puts ""
   when "2"
     puts ""
     puts "From The Pantry Recipe List"
     list_from_the_pantry
     puts ""
     puts "To see more detailed information, please choose a recipe."
          input = gets.strip
         recipe_choice(input_1, input)
         puts ""
   when "3"
     puts ""
     puts "From The Trending Now Recipe List"
     list_trending_now
     puts ""
     puts "To see more detailed information, please choose a recipe."
          input = gets.strip
         recipe_choice(input_1, input)
   when "4"
     puts ""
     puts "From The Smarter, Not Harder Recipe List"
   list_smarter_not_harder
   puts ""
   puts "To see more detailed information, please choose a recipe."
        input = gets.strip
       recipe_choice(input_1, input)
   when "5"
     puts ""
     puts "From The Just Dinner Recipe List"
     list_just_dinner
     puts ""
     puts "To see more detailed information, please choose a recipe."
         input = gets.strip
         recipe_choice(input_1, input)
   when "6"
     puts ""
     puts "From The Featured Collection Recipe List"
     list_featured_collection
     puts ""
     puts "To see more detailed information, please choose a recipe."
         input = gets.strip
         recipe_choice(input_1, input)
   when "exit"
       exit
   else
     puts "Sorry, please try your request again, as that was not an option."
     puts ""
     menu
   end
 end

def recipe_choice(input_1, input)
   if input_1 == "1"
    @recipes_input = @recipes_best_recipes
  elsif input_1 == "2"
     @recipes_input = @recipes_from_the_pantry
   elsif input_1 == "3"
     @recipes_input = @recipes_trending_now
   elsif input_1 == "4"
     @recipes_input = @recipes_smarter_not_harder
   elsif input_1 == "5"
     @recipes_input = @recipes_just_dinner
   elsif input_1 == "6"
     @recipes_input = @recipes_featured_collection
   elsif input == "exit"
     exit
 else
     puts "Please try your request again, as that was not an option."
     puts ""
     menu
   end

 if input != "exit" && @recipes_input[input.to_i-1]
   puts ""
   puts @recipes_input[input.to_i-1].name
   puts ""
   puts "For recipe instructions please visit: #{@recipes_input[input.to_i-1].url}"
   puts ""
    menu
 elsif input == "exit"
   exit
 else
   puts "Please check your input and try again, as your answer returned no value!"
   puts ""
    menu

 end
end

 def goodbye
  puts "Thank you for using this Food Network Recipe Application. Goodbye!"
 end
end
