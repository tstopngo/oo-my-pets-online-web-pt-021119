class Owner
  # code goes here
  @@all = []
  attr_accessor :name
  attr_reader :species
  
  def initialize(specie)
    @species = specie
    
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
  
  def say_species
     "I am a #{@species}."
  end 
  
  def pets 
    @pets = {fishes: [], cats:[], dogs:[]}
  end
  
  def buy_fish(name)
    @pets[:fishes] = Fish.new(name)
  end
  
end