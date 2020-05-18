require 'pry'

class Song

  attr_accessor :artist, :name, :genre

  @@all = []

  def initialize (name)
    @name = name
    save
  end

  def artist=(artist)
    @artist = artist
  end

  def artist_name
    if @artist == nil
      nil
    else
    self.artist.name
  end
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

end
