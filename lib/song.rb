class Song 
  attr_accessor :name, :artist
  
  def initialize(name)
    @@all << self
    @name = name
  end
  
  def add_song(song)
    song.artist = self
  end
  
end