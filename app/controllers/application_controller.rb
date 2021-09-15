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

  post '/patients' do
    patient = Patient.create(
      name: params[:name],
      medical_history: params[:medical_history],
      insured: params[:insured],
      age: params[:age],
      doctor_id: params[:doctor_id]
    )
    patient.to_json
  end

  delete '/patients/:id' do
    patient = Patient.find(params[:id])
    patient.destroy

    doctor = Doctor.current_doctor
    patients = doctor.patients
    patients.to_json

  end

end

