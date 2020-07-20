require 'pry'
require_relative 'artist.rb'
require_relative 'genre.rb'
require_relative 'song.rb'

fartist = Artist.new('Fezz')
genre = Genre.new('Rap')
fong = Song.new('Fong', fartist, genre)


pry
