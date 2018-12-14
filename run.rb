require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
zoo1 = Zoo.new("zooo", "NYC")
#object w/ name & location
# in Zoo class
zoo2 = Zoo.new("Bronx Zoo", "NY")
zoo3 = Zoo.new("Buffalo Zoo", "NY")

animal1 = Animal.new("cat", 7, "Garlfield", zoo1)
animal2 = Animal.new("dog", 20, "Cookie", zoo2)
animal3 = Animal.new("bird", 3, "Tweety", zoo1)
animal3 = Animal.new("cat", 8, "Whiskers", zoo1)


binding.pry
puts "done"
