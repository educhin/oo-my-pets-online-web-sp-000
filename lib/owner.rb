class Owner

  attr_reader :species
  attr_accessor :pets, :name

  @@all = []

  def initialize(name)
    @name = name
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    self.species
  end

  def buy_dog(name)
    Dog.new(name)
  end

  def buy_cat(name)
    Cat.new(name)
  end

  def buy_fish(name)
    Fish.new(name)
  end
end
