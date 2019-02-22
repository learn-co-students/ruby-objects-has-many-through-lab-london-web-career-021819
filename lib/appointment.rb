class Appointment

  attr_reader :date, :patient, :doctor

  @@all_appointments = []

  def self.all
    @@all_appointments
  end

  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all_appointments << self
  end
end
