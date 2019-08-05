class Song 
  attr_accessor :name, :artist
  
  def initialize(name)
    @@all << self
    @name = name
  end
  
  
  
end