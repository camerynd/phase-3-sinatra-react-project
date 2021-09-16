puts "Deleting data..."
Patient.destroy_all
Doctor.destroy_all
Appointment.destroy_all


puts "🌱 Seeding spices..."

# Seed your database here

d1 = Doctor.create(name: "Cole Brown", specialty: "Dermatology", username: "drcole123", password: "password1", location: "Denver, CO", phone_number: "(720) 308-6777", been_in_practice_for: 12, reminders: "Check on patient Jacob Wilcox's blood pressure, get lab work done, remind patient of physical therapy appointment", awards: "Top National Doctor, Best Dermatologist in Denver", image_link: "http://researchfaculty.brighamandwomens.org/ProfilePhotos/Prof154.jpg")
d2 = Doctor.create(name: "Christian Stuart", specialty: "Gastroenterology", username: "drk321", password: "password2", location: "San Jose, CA", phone_number: "(415) 588-4927", been_in_practice_for: 15, reminders: "Check on patient Dinner Duarte's blood pressure, get lab work done, remind patient of physical therapy appointment", awards: "Most Influential in California, Best Gastroenterologist in San Jose", image_link: "https://health.hamariweb.com/Images/DocImages/Dr-Zahid-Asgher_88121.jpeg")

p1 = Patient.create(name: "Jacob Wilcox", medical_history: "Asthma, seizures, headaches", age: 25, insured: true, doctor_id: d1.id)
p2 = Patient.create(name: "Luke Thinnes", medical_history: "High blood pressure", age: 27, insured: false, doctor_id: d1.id)
p3 = Patient.create(name: "Dinner Duarte", medical_history: "Obesity", age: 5, insured: true, doctor_id: d2.id)

a1 = Appointment.create(reason_for_visit: "Rash", date: "January 5th, 2021", time: "5:00 PM", patient_id: p1.id)
a2 = Appointment.create(reason_for_visit: "Acne", date: "March 22nd, 2021", time: "9:00 AM", patient_id: p2.id)
puts "✅ Done seeding!"

