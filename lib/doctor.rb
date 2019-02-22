class Doctor

  attr_reader :name

  @@all_doctors = []

  def self.all
    @@all_doctors
  end

  def initialize(name)
      @name = name
      @@all_doctors << self
  end

  def new_appointment(patience_instance, date)
    Appointment.new(date, patience_instance, self)
  end

  def appointments
    Appointment.all.select { | appointment | appointment.doctor == self }
  end

  def patients
    appointments.map { |appointment| appointment.patient }
  end
end
