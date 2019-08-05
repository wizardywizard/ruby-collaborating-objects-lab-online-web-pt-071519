class MP3Importer
  
  attr_accessor :path
  
  def initialize(file)
    @path = file
  end
  
  def files 
   @files = Dir.glob("#{@path}/*.mp3").collect{ |file| file.gsub("#{@path}/", "") }
  end
  
end