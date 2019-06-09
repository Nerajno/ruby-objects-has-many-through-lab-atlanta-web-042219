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

    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
        # Appointment.all.last
    end

    def appointments
        Appointment.all
    end

    def patients 
         Appointment.all.map{|patient|patient.date}
    end 
end