class Doctor

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end

  def appointments # returns all the appointments belonging to particular doctor
    Appointment.all.select { |appt| appt.doctor == self }
  end

  def patients
    self.appointments.collect { |appt| appt.patient }
  end

end
