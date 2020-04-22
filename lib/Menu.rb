Class Menu
  def self.print_all(list)
    list.each_with_index do |item, index|
        puts "#{index + 1}. #{item.name}"
    end 
  end

  def self.display(list)
    self.print_all(list)
    input_prompt = "Please type in the recipe's number to see that recipe, or type 'exit' to leave."
    puts input_prompt
    input = nil
    while input !="exit"
        input = gets.chomp
        if input.to_i > 0 && input.to_i < list.length + 1
            index = input.to_i - 1
            return index
        elseif input == "exit"
            puts "Thank you for trying out the Food Network Recipe Application. Have a nice day!"
            exit
        else
            puts "Sorry, it seems you have typed something incorrectly. Try again?"
        end 
    end 
  end 
end 
        