#Delete before reseed
City.delete_all
User.delete_all
PrivateMessage.delete_all
Gossip.delete_all
JoinTableGossipTag.delete_all
Commentaire.delete_all
#################

#Create City
10.times do
  City.create(
    name: Faker::Address.city,
    zip_code: Faker::Address.zip
  )
end
puts "Cities OK !"
##############################

#Create Users
10.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    age: Faker::Number.within(range: 18..90),
    description: Faker::Quotes::Chiquito.expression,
    city_id: City.all.shuffle.last.id,
  )
end
puts "Users OK !"
#############################

#Create PrivateMessage

10.times do
  recipient = User.all.shuffle.last #random recipient
  sender = User.all.shuffle.first #random sender
    PrivateMessage.create(
      content: Faker::Fantasy::Tolkien.poem,
      recipient_id: recipient.id,
      sender_id: sender.id
  )
end
puts "Private Messages OK !"
####################################

#Create Gossip
10.times do
user = User.all.shuffle.last
  Gossip.create(
    title: Faker::Movies::StarWars.call_squadron,
    content: Faker::Movies::StarWars.quote,
    user_id: user.id,
  )
end
puts "Gossips OK !"
######################################

#Create TAG
10.times do
  Tag.create(
    title: Faker::Games::Pokemon.name
  )
end
puts "Tags OK !"
######################################

#JoinTable
10.times do
  gossip = Gossip.all.shuffle.last
  tag = Tag.all.shuffle.first
    JoinTableGossipTag.create(
      gossip_id: gossip.id,
      tag_id: tag.id
    )
end
puts "Joins OK !"
##################################

#Create Comment
50.times do
  gossip = Gossip.all.shuffle.last
  user = User.all.shuffle.last
  Commentaire.create(
    content: Faker::Fantasy::Tolkien.poem,
    gossip_id: gossip.id,
    user_id: user.id
  )
end
puts "Commentaires OK !"
##############################

#Create Likes
20.times do
  gossip = Gossip.all.shuffle.last
  commentaire = Commentaire.all.shuffle.last
  Like.create(
    gossip_id: gossip.id,
    commentaire_id: commentaire.id,
  )
end
puts "Likes OK !"
#################################

#Create Comment of Comment
20.times do
  commentaire = Commentaire.all.shuffle.last
  user = User.all.shuffle.last
  PolyComment.create(
    content: Faker::Lorem.paragraph,
    commentaire_id: commentaire.id,
    user_id: user.id
  )
end
puts "Commentaires of Commentaires OK !"
#########################