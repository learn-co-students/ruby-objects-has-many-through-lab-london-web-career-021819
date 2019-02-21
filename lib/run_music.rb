require_relative "./artist.rb"
require_relative "./song.rb"
require_relative "./genre.rb"
require "pry"

artist1 = Artist.new("John")
song1 = Song.new("Holly Molly", artist1, "country")

binding.pry

puts "Cool, done"
