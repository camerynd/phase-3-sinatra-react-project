class Doctor < ActiveRecord::Base
    has_many :patients
    has_many :appointments, through: :patients

    def self.current_doctor
        Doctor.find_by current_user: true
    end
end