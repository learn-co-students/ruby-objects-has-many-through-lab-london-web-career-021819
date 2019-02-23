
require_relative "./genre.rb"
require_relative "./song.rb"
require 'pry'

class Artist
  attr_accessor :name

  @@all = []

    def initialize(name)
      @name = name
      @@all << self
    end

    def self.all
      @@all
    end

    def new_song(name, genre)
      new_song = Song.new(name, self, genre)
    end

    def songs
      Song.all.select {|song| song.artist == self}
    end
    # The Artist class needs an instance method, #genres that iterates over that
    #artist's songs and collects the genre of each song.

      def genres
        songs.collect {|song| song.genre}
      end
    end
