#Delete before seed
Speciality.delete_all
City.delete_all
Doctor.delete_all
Patient.delete_all
Appointment.delete_all
######################

#Create Speciality
specialities = ["Generalist", "Cardiologist","Allergology", "Cardiology", "Dermatology"]
specialities.each_with_index do |s,index|
  Speciality.create(
    name: s
  )
end
puts "Speciality OK !"
###############################

#Create City
10.times do
  City.create(
    name: Faker::Address.city
  )
end
puts "City OK !"
##############################

#Create Doctor
20.times do
  Doctor.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    #zip_code: Faker::Address.zip_code,
    city_id: City.all.shuffle.first.id

  )
end
puts "Doctors OK !"
#######################################

#Create Patient
100.times do
  Patient.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    city_id: City.all.shuffle.last.id
  )
end
puts "Patient OK !"
########################################

#Create Appointment
100.times do
  doctor = Doctor.all.shuffle.first
  Appointment.create(
    date: Faker::Time.between_dates(from: Date.today, to: Date.today + 365, period: :day),
    doctor_id: doctor.id,
    patient_id: Patient.all.shuffle.last.id,
    city_id: doctor.city_id
  )
end
puts "Appointment OK !"
##########################################

#Doctor /Speciality
doctors = Doctor.all # array of all doctors
doctors.each_with_index do |doctor, index| # each doctor will have one or more specialties

  random_nb = rand(1..5) # this doctor will have random_nb specialties
  mixed_specialties = Speciality.all.shuffle

  i = 0
  random_nb.times do |i|
    JoinTableDoctorSpeciality.create(
      doctor_id: doctor.id,
      speciality_id: mixed_specialties[i].id,
    )
    i += 1
  end

  if random_nb == 1
    puts "Doctor n°#{index+1} got #{random_nb} random speciality!"
  else
    puts "Doctor n°#{index+1} got #{random_nb} random and different specialities!"
  end
end

####################################