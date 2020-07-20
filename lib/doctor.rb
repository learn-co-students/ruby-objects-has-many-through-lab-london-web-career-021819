require "pry"
class Doctor

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

    #has many appointments
  def appointments
    Appointment.all.select{|appointment| appointment.doctor ==self}
  end

 #given a date and a patient, creates a new appointment
  def  new_appointment(patient, date)
      Appointment.new(date,patient, self)
  end

  def patients
    appointments.map{|appointment| appointment.patient}
  end


end
