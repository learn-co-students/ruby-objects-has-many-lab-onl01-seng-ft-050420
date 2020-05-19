class Artist #is initialized with a name

  attr_accessor :name, :songs  #has an attr_accessor for name

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song) # takes in an argument of a song and associates that song with
                      # the artist by telling the song that it belongs to that artist
    self.songs << song
    song.artist = self
    @@song_count += 1
  end

  def add_song_by_name(name)  #takes in an argument of a song name, creates a new song with
                              # it and associates the song and artist
    song = Song.new(name)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def self.song_count
    Song.all.count
  end

end
