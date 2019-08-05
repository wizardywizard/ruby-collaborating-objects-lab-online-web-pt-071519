class Song 
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @@all << self
    @name = name
  end
  
   def self.all 
    @@all 
  end
  
  def self.find_or_create_by_name(name)
    
  end
  
end