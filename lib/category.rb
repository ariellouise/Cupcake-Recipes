require 'open-uri'
require 'Nokogiri'


base_url = "https://www.foodnetwork.com/recipes/"
category_url = base_url + "recipes-a-z/a"

categories_page = open(category_url)
categories_html = categories_page.read

parsed_categories = Nokogiri::HTML(categories_html)
puts parsed_categories.class
#categories_types = parsed_categories.css("h3#a.o-Capsule__a-Headline").map(&:text)
categories_list = parsed_categories.css("a").map(&:text) 
categories_list = categories_list[70, categories_list.length - 113]
#puts categories_types.to_s
#puts categories_types.length
#puts categories_list.to_s
end

class category
    @@all = [ ]


    attr_accessor :name

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def self.all
        @@all
    end

    def self.get_list
        self.scrape_category
        category_index = Menu.display(self.all)
        category = self.all[category_index]
    end

    def self.scrape_category
        category_url = "https://www.foodnetwork.com/recipes/recipes-a-z/a"
        parsed_categories = Nokogiri::HTML(categories_html)
        puts parsed_categories.class
        categories_list = parsed_categories.css("a").map(&:text) 
        categories_list = categories_list[70, categories_list.length - 113]
       # Try the ("a:contains(' ') again)
        categories_list.each.with_index(1) do |value, index| 
            puts "#{index}: #{value}" 

        end
    end

    def add_recipe(recipe)
        self.recipes << recipe
    end
end


     