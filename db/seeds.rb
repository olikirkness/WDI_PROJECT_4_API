# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ title: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Request.destroy_all
League.destroy_all
Match.destroy_all
User.destroy_all

u1 = User.create!(username: "okirkness", email: "oli@kirkness.com", password: "password", password_confirmation: "password" , ranking: [3420, 3139])
u2 = User.create!(username: "gary", email: "gary@gary.com", password: "password", password_confirmation: "password" , ranking: [4329, 4982])
u3 = User.create!(username: "joe", email: "joe@joe.com", password: "password", password_confirmation: "password", ranking: [1200, 1623, 1423, 1523, 1613])

l1 = League.create!(title: "Canterbury Squash", image: "http://media.groupspaces.com/thumb/s/17489659/h/54c01a7c691fc5135959fecb1a3dcdd4.jpg" , user_ids: [u1.id, u2.id], created_by: u1.id)
l2 = League.create!(title: "Paderborner Sc", image: "https://asc-paderborn.de/tl_files/asc/images/bg/default.jpg" , user_ids: [u1.id, u2.id, u3.id], created_by: u2.id)
l3 = League.create!(title: "Loughborough Squash", image: "http://loughboroughsport.com/au-squash/files/2014/08/web1.png" , user_ids: [u1.id, u2.id, u3.id], created_by: u1.id)
l4 = League.create!(title: "Joes League", image: "http://www.coolhurst.co.uk/wp-content/uploads/2014/02/SquashDoubles2.jpg", user_ids: [u1.id, u2.id, u3.id], created_by: u3.id)

m1 = Match.create!(user_ids: [u1.id, u2.id], league_id: l2.id, score: [9,3,9,6,9,3])

m2 = Match.create!(user_ids: [u1.id, u3.id], league_id: l1.id, score: [11,3,11,6,11,3])

m3 = Match.create!(user_ids: [u1.id, u3.id], league_id: l4.id, score: [3,11,11,8,11,8,11,5])
m4 = Match.create!(user_ids: [u2.id, u3.id], league_id: l3.id, score: [3,11,11,8,11,8,11,5])


Request.create(league_id: l1.id, sender_id: u3.id, reciever_id: u1.id)
Request.create(league_id: l1.id, sender_id: u1.id, reciever_id: u3.id)
