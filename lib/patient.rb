class Patient

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(self, date, doctor)
  end

  def appointments
    # has many doctors through appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end

  def doctors
    # has many doctors through appointments
      appointments.map {|appointment| appointment.doctor}
  end

end
