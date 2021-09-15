class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get "/login" do
    doctors = Doctor.all
    doctors.to_json(include: { patients: {include: :appointments} })
  end

  patch "/doctors/:id" do
    doctor = Doctor.find(params[:id])
    doctor.update(
      current_user: params[:current_user]
    )
    doctor.to_json(include: { patients: {include: :appointments} })
  end

  get "/patients" do
    doctor = Doctor.current_doctor
    patients = doctor.patients
    patients.to_json
  end 

  get "/appointments" do
    doctor = Doctor.current_doctor
    appointments = doctor.appointments
    appointments.to_json(include: :patient)
  end

end

