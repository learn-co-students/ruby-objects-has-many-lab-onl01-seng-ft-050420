class Song 
  @@all = []
  attr_accessor :name, :genre, :artist
  def initialize(name)
    @name = name 
    #@genre = genre 
    @@all << self 
  end 
  def self.all 
    @@all 
  end
  def artist_name 
    if self.artist == nil 
      nil 
    else 
      self.artist.name 
    end 
  end 
end 