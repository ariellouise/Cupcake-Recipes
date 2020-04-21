# The   CLI

require 'open-uri'
require 'nokogiri'
require 'pry'


class Cupcakes::CLI
    def.self.print_all(list)
    list.each_with_index do |item, index|
      puts "#{index + 1}. #{item.name}"
    end

  def list_recipes
    @recipes = Recipes::Recipe.all
    @recipes.each.with_index(1) do |recipe, index|
      puts "#{index}. #{recipe.name} - #{recipe.description}"
    end
    
  end

  def self.display(list)
    self.print_all(list)
    input_prompt = "Please type in the number to select a a particular recipe, or type 'exit':"
    puts input_prompt
    input = nil 
    while input != "exit"
     input = gets.chomp.downcase
     if input.to_i > 0 && input.to_i < list.length + 1 
       index = input.to_i - 1 
       return index
      elseif input == "exit"
        puts "Thank you for using the Cupcake Recipe Application. Goodbye!"
        exit
      else 
        puts "Please check your input and try again, as your answer returned no value! #{input_prompt}"
      end
    end
  end
end