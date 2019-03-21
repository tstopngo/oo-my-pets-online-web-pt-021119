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
    Fish.new(name)
    self.pets[:fishes] << new_fish
  end
  
   def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end
  
  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)
  end
  
end