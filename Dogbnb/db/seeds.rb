#Delete before seed
Animal.delete_all
AnimalSitter.delete_all
City.delete_all
Stroll.delete_all
########################

#Create City
10.times do
  City.create(
    name: Faker::Address.city
  )
end
puts "City OK !"
############################

#Create Animals sitters
10.times do
  AnimalSitter.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    city_id: City.all.shuffle.last.id
  )
end
puts "Animals Sitters OK !"

##################################

#Create Animals
10.times do
  Animal.create(
    name: Faker::Creature::Dog.name,
    breed: Faker::Creature::Dog.breed,
    city_id: City.all.shuffle.last.id
  )
end
puts "Animals OK !"

####################################

#Create Stroll

75.times do
  Stroll.create(
    date: Faker::Time.between_dates(from: Date.today, to: Date.today + 365, period: :day),
    animal_sitter_id: AnimalSitter.all.shuffle.first.id,
    animal_id: Animal.all.shuffle.last.id
  )
end
puts "Stroll OK !"