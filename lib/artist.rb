class Artist 
  attr_accessor :name
  
  
  
  def initialize(name)
    @name = name
    @@all = []
  end
  
  def Artist.all 
    @@all
  end
  
end