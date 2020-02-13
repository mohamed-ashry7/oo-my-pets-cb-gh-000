class Cat
  attr_accessor :owner ,  :mood
  attr_reader :name
  @@all =[]
  def initialize(name , owner )
    @name = name
    @owner = owner
    @mood = "nervous"
    @owner.add_cat (self )
    @@all << self
  end

  def self.all
    @@all
  end
  def self.count
    @@all.size
  end


  def self.find_or_create_a_cat(name )
    cat = @@all.find {|c| c.name == name  }
    cat ||=self.new(name )
  end
end
