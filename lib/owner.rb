class Owner
  # code goes here
  @@all = []
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @pets = {fishes: [], cats:[], dogs:[]}
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  def self.count
    @@all.length
  end