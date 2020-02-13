class Owner
  attr_accessor :cats , :dogs
  attr_reader :name , :species
  @@all = []
  def initialize(name)
    @name = name
    @species = "human"
    @cats = []
    @dogs = []
    @@all << self
  end

  def say_species
    "I am a #{species}."
  end

  def self.all
    @@all
  end
  def self.count
    @@all.size
  end
  def self.reset_all
    @@all.clear
  end

  def add_cat(cat)
    @cats << cat
  end
  
  def add_dog (dog )
    @dogs << dog
  end

  def cats

end
