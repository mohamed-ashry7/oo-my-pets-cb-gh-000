class Owner
  attr_accessor :pets
  attr_reader :name , :species
  @@all = []
  def initialize(name)
    @name = name
    @species = "human"
    @pets = []
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
  def reset_all
    @all.clear
  end

end
