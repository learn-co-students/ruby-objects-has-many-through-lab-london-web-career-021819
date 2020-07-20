require_relative "./doctor.rb"
require_relative "./appointment.rb"
require_relative "./patient.rb"
require "pry"

doctor1 = Doctor.new("John")
a = Appointment.new("1 July", "Terry", doctor1)

binding.pry

puts "Cool, done"
