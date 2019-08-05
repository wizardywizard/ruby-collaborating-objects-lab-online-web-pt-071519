require "pry"
class Artist 
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def self.find_or_create_by_name(name)
    if  self.find(name)
     self.find(name)
   else 
     self.create(name)
   end
  end
  
  def self.find(name)
    @@all.find do |artist|
      artist.name == name
    end
  end
  
  def self.create(name)
   artist = self.new(name)
   @@all << artist
   artist
  end
  
  def print_songs
    binding.pry
    #puts @song.collect {|x| x.name} 
  end
  
end






















