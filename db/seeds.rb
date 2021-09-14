puts "Deleting data..."
Patient.destroy_all
Doctor.destroy_all

puts "🌱 Seeding spices..."

# Seed your database here

d1 = Doctor.create(name: "Dr. Cole", specialty: "dermatology", username: "drcole123", password: "password1")
d2 = Doctor.create(name: "Dr. K", specialty: "gastroenterology", username: "drk321", password: "password2")

p1 = Patient.create(name: "Jacob Wilcox", medical_history: "bla bla bla", age: 25, insured: true, doctor_id: d1.id)
p2 = Patient.create(name: "Luke Thinnes", medical_history: "bla bla bla bla bla", age: 27, insured: false, doctor_id: d1.id)
p3 = Patient.create(name: "Dinner Duarte", medical_history: "bla bla bla bla bla is cat", age: 5, insured: true, doctor_id: d2.id)

puts "✅ Done seeding!"

puts d2.patients.all

puts d1.patients.map(&:name)
