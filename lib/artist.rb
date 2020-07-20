# Deliverables:
# The Artist class needs a class variable @@all that begins as an empty array
# The Artist class needs a class method .all that lists each artist in the class variable
# An artist is initialized with a name and is saved in the @@all array.
# The Artist class needs an instance method, #new_song, that takes in an argument of a name and genre creates a new song. That song should know that it belongs to the artist.
# The Artist class needs an instance method, #songs, that iterates through all songs and finds the songs that belong to that artist. Try using select to achieve this.
# The Artist class needs an instance method, #genres that iterates over that artist's songs and collects the genre of each song.

class Artist

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    Song.new(name, self, genre) # self is current instance of Artist.
  end

  def songs
    Song.all.select { |song| song.artist == self }
  end
  # Test for new_song method uses this method, so it would not pass until this method was written

  def genres # Artist has many genres,though Songs
    self.songs.collect { |song| song.genre }
  end

end
