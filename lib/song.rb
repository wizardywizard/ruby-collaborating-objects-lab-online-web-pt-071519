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
  
  def self.new_by_filename(file)
    song_name = file.split
  end
  
end