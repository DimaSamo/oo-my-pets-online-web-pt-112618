class Owner
  # code goes here
  attr_reader :species
  attr_accessor :name, :pets

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

  def buy_fish(name)
    @pets[:fishes].push(Fish.new(name))
  end

  def buy_cat(name)
    @pets[:cats].push(Cat.new(name))
  end

  def buy_dog(name)
    @pets[:dogs].push(Dog.new(name))
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets = {}

  end

end
