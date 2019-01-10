class Owner
  # code goes here
  attr_reader :species

  @@all=[]

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def initialize(species)
    @species = species
    @@all.push(self)
  end

end
