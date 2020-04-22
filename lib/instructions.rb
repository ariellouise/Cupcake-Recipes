require 'open-uri'
require 'Nokogiri'


base_url = "https://www.foodnetwork.com/recipes/"
instruction_url = base_url + "a-big-delicious-chocolate-mess-5393121"

instructions_page = open(instruction_url)
instructions_html = instructions_page.read

parsed_instructions = Nokogiri::HTML(instructions_html)
puts parsed_instructions.class
instructions_list = parsed_instructions.css("li.o-Method__m-Step").map(&:text)

puts instructions_list.to_s



