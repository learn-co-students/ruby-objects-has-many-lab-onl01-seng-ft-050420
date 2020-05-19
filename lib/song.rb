
class Song
  attr_accessor :artist, :name, :genre

  @@all = []

  def initialize(name, artist=nil)
    @name = name
    @artist = artist
    save
  end

  def save
    @@all << self
  end

  def self.all
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
