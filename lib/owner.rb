require 'pry'

class Owner
  # code goes here
  @@all = []
  attr_accessor :name, :pets
  attr_reader :species
  
  def initialize(specie)
    @species = specie
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
  
  def say_species
     "I am a #{@species}."
  end 
  
  
  def buy_fish(name)
    new_fish = Fish.new(name)
    self.pets[:fishes] << new_fish
  end
  
   def buy_cat(name)
    new_cat = Fish.new(name)
    self.pets[:fishes] << new_fish
  end
  
end