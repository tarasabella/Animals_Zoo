class Zoo

   attr_reader :name, :location
   #sets/reads the name & location

   @@all = []
   #class variable that can be accessed anywhere in the Zoo class

    def initialize(name, location)
      @name = name
      @location = location
      @@all << self
      #we push each zoo object into the Zoo class
      #whatever zoo object we input we shovel
      #everytime a new zoo is created, its shoveled into the class
    end

    #Your class requires name & location when called
    #def location

  def self.all
    @@all
  end

  def animals
    Animal.all.select do |animal|
      animal.zoo == self
    end
    #gives an array of all zoos
    #filter through each of the zoos to find the animals in the specific zoo instance
  end

  def animal_species # => gives an array of all the animal species in the zoo
    Animal.all.collect do |animal|
      animal.species
    end.uniq
  end
#returns array of all species of animals in this zoo without repeats

  def find_by_species(species) # => gives an array of all animals in the zoo for that species
    Animal.all.select do |animal|
      animal.species == species

    end
  end
  #comparing the argument to the animal species
  def animal_nicknames # => should return an array of nicknames for the specific
    Animal.all.map do |animal|
      if animal.zoo == self
        animal.nickname

      #compact method gets rid of nil an array
      end
    end.compact
  end

  def self.find_by_location(location) #=> returns an array of zoos based on location
    self.all.select do |zoo|
      zoo.location == location
    end
  end
#select: new array given that it follows a certain condition
# each: goes through each and returns the original unless saved in a variable ,
#map/collect outputs new array
#find has a conditional that only returns the first result thats true
  #Class method
  #location has been set so use self
  #with enumerators you analyze a group of somethoing/array
  #try to analzye one group of that element
  #ex. self is like how pronouns are references to people



end

#
