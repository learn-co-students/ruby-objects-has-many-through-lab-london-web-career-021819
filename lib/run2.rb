require 'pry'
require_relative './doctor.rb'
require_relative './appointment.rb'
require_relative './patient.rb'

# Doctor instances:
d1 = Doctor.new("Dexter")
d2 = Doctor.new("Foster")
d3 = Doctor.new("Who")

# Patient instances:
p1 = Patient.new("Helen")
p2 = Patient.new("Jeremy")
p3 = Patient.new("Marjorie")

# Appointment instances:
a1 = Appointment.new("22/02/19", "Helen", "Dexter")
a2 = Appointment.new("23/02/19", "Jeremy", "Foster")
a3 = Appointment.new("24/02/19", "Marjorie", "Who")


binding.pry
"some text"
