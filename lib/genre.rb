
class Genre

  attr_accessor :name, :song

  @@genres = []

def initialize(name)
  @name = name
  @song = song
  @@genres << self
end

def self.all
  @@genres
end

def songs
  Song.all.select do |song|
    song.genre == self
  end
end

def artists
  songs.collect do |song|
    song.artist
  end
end


end
