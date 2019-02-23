require_relative "./artist.rb"
require_relative "./song.rb"

class Genre
  attr_reader :name
  attr_accessor :songs, :artists

  @@all = []

    def initialize(name)
      @name = name
      @@all << self

    end

    def self.all
      @@all
    end

    def songs
      Song.all.select {|song| song.genre == self}
    end
    def artists
      songs.collect {|song| song.artist}
    end
end
