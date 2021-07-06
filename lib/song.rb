require 'pry'
class Song
  attr_accessor :name, :artist
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def Song.all   #attr_accessor on class level
    @@all
  end
  
  def artist_name
    if self.artist 
      self.artist.name
    else
      nil
    end
  end
  
end