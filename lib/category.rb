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
    category_index = CLI.display(self.type, self.all)
    category = self.all[category_index]
  end

  def self.scrape_all_categories
    main_url = "https://www.foodnetwork.com/recipes/"
    doc = Nokogiri::HTML(open(main_url))
    rows = doc.css("h3") 
    rows.shift 

    rows.each do |row|
      name = row.css("h3").text
      name.slice!("All ")
      name.slice!(" Recipes")
      url = row.css("a").attr("href").value
      self.new(name, url)
  end

  def add_recipe(recipe)
    self.recipes << recipe
  end
 end
end