require 'pry'
require_relative './appointment.rb'
require_relative './artist.rb'
require_relative './doctor.rb'
require_relative './genre.rb'
require_relative './patient.rb'
require_relative './song.rb'

# code goes here!

# Doctor
doctor_who = Doctor.new('The Doctor')
doctor_dog = Doctor.new('Dog')
doctor_howser = Doctor.new('Howser')
doctor_what = Doctor.new('Das Doktor')

# Patient
hevydevy = Patient.new('Devin Townsend')
zero = Patient.new('Zero')
good = Patient.new('Good')
steve = Patient.new('Steve from Blues Clues')

# Appointment
appointment_one = steve.new_appointment(doctor_dog, 'Friday, January 32nd')
appointment_two = steve.new_appointment(doctor_howser, 'Saturday, January 32nd')
hevydevy.new_appointment(doctor_who, 'Friday, January 32nd')
hevydevy.new_appointment(doctor_what, 'Saturday, January 32nd')

# # Artist
# jay_z = Artist.new("Jay-Z")
# kendrick = Artist.new("Kendrick Lamar")
#
# # Genre
# rap = Genre.new("rap")
# rap = Genre.new('rap')
# blues = Genre.new('blues')
# rock = Genre.new('rock')
# folk = Genre.new('folk')
#
# # Song
# shrimp = Song.new("Big Shrimpin", jay_z, rap)
# ninety_nine_problems = Song.new("99 Problems", jay_z, rap)
# humble = Song.new('HUMBLE', kendrick, rap)




binding.pry
puts "Mischief managed!"
