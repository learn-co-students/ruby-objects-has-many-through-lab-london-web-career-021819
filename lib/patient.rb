class Patient

  attr_reader :name

  @@all_patients = []

  def self.all
    @@all_patients
  end

  def initialize(name)
    @name = name
    @@all_patients << self
  end

  def appointments
    Appointment.all.select { | appointment | appointment.patient == self }
  end

  def doctors
    appointments.map { |appointment| appointment.doctor }
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end
end
