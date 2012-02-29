class Dessert
  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  
  attr_accessor :name
  attr_accessor :calories
  
  def healthy?
    calories < 200
  end
  
  def delicious?
    true
  end
end

class JellyBean < Dessert
  def initialize(name, calories, flavor)
    super(name, calories)
    @flavor = flavor
  end
  
  attr_accessor :flavor
  
  def delicious?
    if flavor.downcase == "black licorice"
      return false
    end
    super
  end
end

a = Dessert.new("Ice Cream", 230)
b = Dessert.new("Cake", 180)
c = JellyBean.new("Red Jelly Bean", 220, "Red")
d = JellyBean.new("Black Jelly Bean", 190, "Black Licorice")

puts a.delicious?
puts a.healthy?

puts b.delicious?
puts b.healthy?

puts c.delicious?
puts c.healthy?

puts d.delicious?
puts d.healthy?

puts a.name
puts a.calories
a.name="Green Ice Cream"
puts a.name
a.calories=190
puts a.healthy?

puts c.name
puts c.calories
puts c.flavor

