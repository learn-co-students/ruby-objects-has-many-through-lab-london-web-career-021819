class Genre

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select { |songs| songs.genre == self}
    #iterates through all songs and finds the songs that belong to that genre. Try using `select` to achieve this.
  end

  def artists
    songs.collect { |songs| songs.artist}
    #iterates over that genres's collection of songs and collects the artist that owns each song.
  end

end
