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


  def find_or_create_a_cat(name, owner )
    cat = @@all.find {|c| c.name == name  }
    cat.owner = owner if cat 
    cat ||=self.new(name,owner )
end
