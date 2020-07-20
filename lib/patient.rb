class Patient
  @@all = []

    attr_accessor :name

   def initialize(name)
     @date = name
     @@all << self
    end

    def self.all
      @@all
    end
      #given a doctor and date, creates a new appointment belonging to that patient
    def new_appointment(doctor,date)
       Appointment.new(date, self, doctor)
    end
      #has many doctors through appointments
    def appointments
      Appointment.all.select{|appointment| appointment.patient ==self}
    end
      #has many doctors through appointments
    def doctors
      appointments.map{|appointment| appointment.doctor}
    end




end
