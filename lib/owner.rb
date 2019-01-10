class Owner
  # code goes here
  attr_reader :species, :pets
  attr_accessor :name

  @@all=[]

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all = []
  end

  def initialize(species)
    @species = species
    @pets = {fishes: [], dogs: [], cats: []}
    @@all.push(self)
  end

  def say_species
    "I am a #{self.species}."
  end

  # def pets
  #
  # end

end
