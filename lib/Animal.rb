class Animal

attr_reader :species, :nickname
attr_accessor :weight
#allows for weight to change
@@all = []
#create a class variable scoped w/in the Animal class

def initialize(species, weight, nickname, zoo)
  @species = species
  @weight = weight
  @nickname = nickname
  @zoo = zoo
  @@all << self

  #everytime a new animal object is created, its shoveled into the Animal class

end

def self.all
  @@all
  #returns an array of all animal instances
end

def zoo
  @zoo
#method returns the zoo instance that was intialized based on the input
end

def self.find_by_species(species)
  self.all.select do |animal|
    animal.species == species
    #method takes in an argument of species
    #and loop over those species
    # select only the species that return true
    #true only when self equals the species
  end
end

end
