class Genre

  attr_accessor :name, :songs, :artists
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @songs = []
    @artists = []
    @@all << self
  end

  def songs
    Song.all.select {|song| song.genre == self }
  end

  def artists
    Song.all.map {|song| song.artist}
  end

end
