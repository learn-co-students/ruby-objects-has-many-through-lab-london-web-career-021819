require 'pry'
require_relative './artist.rb'
require_relative './genre.rb'
require_relative './song.rb'



# artist instances:
a1 = Artist.new("Bob The Builder")
a2 = Artist.new("MJ")
a3 = Artist.new("Dolly Parton")


# genre instances:
g1 = Genre.new("Folk")
g2 = Genre.new("Pop")
g3 = Genre.new("Religious")


# song instances:
s1 = Song.new("I Love You", "MJ", "Religious")
s2 = Song.new("Hi, it's me!", "Katy Perry", "Pop" )
s3 = Song.new("Happy Holidays", "Dolly Parton", "Folk")


binding.pry
"some text"
