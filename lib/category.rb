
require 'Nokogiri'
require 'Open-uri'

#base_url = "https://www.foodnetwork.com"
#recipes_url = base_url + "recipes/"

class Category
    @@all = []
    @@type = "category"

    attr_accessor :name, :url, :recipes

    def initialize(name, url)
        @name = name
        @url = url
        @recipes = []
        self.class.all << self
    end

    def self.all
        @@all
    end

    def self.type
        @@type
    end

    def self.get_category
        self.scrape_all_categories
        category_index = Menu.display(self.type, self.all)
        category = self.all[category_index]
    end

    def self.scrape_all_categories
        recipes_url = "https://www.foodnetwork.com/recipes/"
        doc = Nokogiri::HTML(open(recipes_url))
        rows = doc.css("h4").map(&:text)
        rows.shift
    end

    def add_recipe(recipe)
        self.recipes << recipe
    end
end
