class Patient

  attr_accessor :name
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    new_appointment = Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select {|a| a.patient == self}
  end

  def doctors
    Appointment.all.map{|a| a.doctor}
  end



end
