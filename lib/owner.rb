class Owner
  # code goes here
  attr_reader :species

  @@all=[]

  def self.all
    @@all
  end

  def initialize(species)
    @species = species
  end

end
