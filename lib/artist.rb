class Artist 
  
  @@all = []
  
  def initialize(name)
    @name = name
  end
  
  def Artist.all 
    @@all
  end
  
end