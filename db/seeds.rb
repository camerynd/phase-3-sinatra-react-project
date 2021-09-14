puts "Deleting data..."
Patient.destroy_all
Doctor.destroy_all

puts "🌱 Seeding spices..."

# Seed your database here

d1 = Doctor.create(name: "Dr. Cole", specialty: "dermatology")
p1 = Patient.create(name: "Jacob Wilcox", medical_history: "bla bla bla", age: 25, insured: true, doctor_id: d1.id)
p2 = Patient.create(name: "Luke Thinnes", medical_history: "bla bla bla bla bla", age: 27, insured: false, doctor_id: d1.id)

puts "✅ Done seeding!"

puts p1.doctor.name

puts d1.patients.map(&:name)
