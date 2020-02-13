class Dog
  attr_accessor :owner ,  :mood
  attr_reader :name
  @@all =[]
  def initialize(name , owner )
    @name = name
    @owner = owner
    @mood = "nervous"
    @owner.add_pet (self)
    @@all << self
  end

  def self.all
    @@all
  end
  def self.count
    @@all.size
  end
end
