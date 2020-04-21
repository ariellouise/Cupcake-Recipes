
#the recipes being shown as a recipe - level 2 and child file

class CupcakeRecipes
 attr_accessor :name, :ingredients, :instructions , :url

 @@all = []

  def initialize()
   hash.each do |key, value|
     self.send("#{key}=",value)
    end
    @ingredients = []
    @instructions = instructions
  end
  
  def self.all
   @@all
  end

 def save
   self.class.all.push(self)
 end

 def self.create()
   recipe = self.new()
   recipe.save
   recipe
 end

 def self.create_from_array(array)
   array.each do ||
     self.create()
   end
  end
end




