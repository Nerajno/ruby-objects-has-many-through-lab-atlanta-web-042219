require "pry"

class Appointment

    attr_accessor :date, :patient, :doctor
    @@all = [] 

    def initialize(date, patient, doctor)
        @patient = patient
        @date = date 
        @doctor = doctor
        @@all << self
    end

    def self.all
        @@all 
    end

    def patient
       mark = self.date # issues here, the date and the patients
       mark             # are in the wrng places in the argument  
     end


end