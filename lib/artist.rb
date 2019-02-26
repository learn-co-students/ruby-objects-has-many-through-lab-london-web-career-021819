class Artist

      attr_accessor :name, :title, :genre


@@all = []
@@songs = []

  def initialize(name)
    @name = name
    @@all << self
  end


  def self.all
    @@all
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

    def songs
      Song.all.select { |title| title.artist == self}
    end

    def genres
      Song.all.collect { |genres| genres.genre}
    end

end
