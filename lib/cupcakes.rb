# The scrape/parse - level 1 and main file

require 'open-uri'
require 'nokogiri'


#base_url = "https://tasty.co"
#cupcakes_url = base_url + "search?q=cupcakes"


#cupcakes_page = open(cupcakes_url)
#cupcakes_html =cupcakes_page.read 

#parsed_cupcakes = Nokogiri::(cupcakes_html)

#cupcake_types = parsed_cupcakes.css("item-title xs-text-4 md-text-3 extra-bold text-gray xs-mb05").map(&:text)
#cupcake_recipes = parsed_cupcakes.css


class List 
  def.self.print_all(list)
  list.each_with_index do |item, index|
    puts "#{index + 1}. #{item.name}"
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