class Owner
  # code goes here
  @@all = []
  attr_accessor :name, :species
  
  def initialize(name, species)
    @name = name
    @species = species
    @pets = {fishes: [], cats:[], dogs:[]}
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  def self.count
    self.all.length
  end
  
  def self.reset_all
    self.all.clear
  end
  
  
end