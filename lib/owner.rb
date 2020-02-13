class Owner
  attr_reader :name , :species
  @@all = []
  def initialize(name)
    @name = name
    @species = "human"
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

  def cats
    Cat.all.each {|c| puts c.name if c.owner == self }
    Cat.all.select {|cat| cat.owner == self }
  end

  def dogs
    Dog.all.select {|dog| dog.owner == self }
  end



  def buy_cat(cat_name)
    cat = Cat.find_or_create_a_cat(cat_name,self )
  end

  def buy_dog (dog_name)
    dog = Dog.find_or_create_a_dog(dog_name,self)
  end


end
