puts "Deleting data..."
Patient.destroy_all
Doctor.destroy_all
Appointment.destroy_all

puts "🌱 Seeding spices..."

# Seed your database here

d1 = Doctor.create(name: "Dr. Cole", specialty: "dermatology", username: "drcole123", password: "password1", current_user: true)
d2 = Doctor.create(name: "Dr. K", specialty: "gastroenterology", username: "drk321", password: "password2", current_user: false)

p1 = Patient.create(name: "Jacob Wilcox", medical_history: "bla bla bla", age: 25, insured: true, doctor_id: d1.id)
p2 = Patient.create(name: "Luke Thinnes", medical_history: "bla bla bla bla bla", age: 27, insured: false, doctor_id: d1.id)
p3 = Patient.create(name: "Dinner Duarte", medical_history: "bla bla bla bla bla is cat", age: 5, insured: true, doctor_id: d2.id)

a1 = Appointment.create(reason_for_visit: "jsdbabbbbbblala", date: "Tuesday, January 10th, 2021", time: "5:00 PM", patient_id: p2.id)
a2 = Appointment.create(reason_for_visit: "jsdlblala", date: "Monday, February 10th, 2021", time: "1:00 PM", patient_id: p1.id)
a3 = Appointment.create(reason_for_visit: "blala", date: "Wednesday, March 11th, 2021", time: "9:00 AM", patient_id: p1.id)

puts "✅ Done seeding!"

# puts a1.date

# puts d1.patients.map(&:name)

# puts d1.appointments.map(&:date)

# puts a2.patient.name

# puts p1.appointments

doctor = Doctor.current_doctor
appointments = doctor.appointments
patients = appointments.find_patients

puts patients