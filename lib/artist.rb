require "pry"
class Artist 
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def save
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
   artist
  end
  
  def print_songs
    songs.each do |x| 
      puts x.name
    end
  end
  
end






















