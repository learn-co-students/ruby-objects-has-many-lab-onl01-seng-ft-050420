require 'pry'

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
  
  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
  end
  
  def add_song(song)
    song.artist = self
  end
    
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def self.song_count
    song_num_arr = @@all.map { |song_obj| song_obj.songs.length }
    song_num_arr.reduce { |acc, cur| acc + cur }
  end 
    
end