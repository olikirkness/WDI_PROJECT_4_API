# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ title: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Request.destroy_all
Challenge.destroy_all
League.destroy_all
Match.destroy_all
User.destroy_all

u1 = User.create!(username: "okirkness", email: "oli@kirkness.com", password: "password", password_confirmation: "password" , ranking: [3420, 3139])
u2 = User.create!(username: "gary", email: "gary@gary.com", password: "password", password_confirmation: "password" , ranking: [4329, 4982])
u3 = User.create!(username: "joe", email: "joe@joe.com", password: "password", password_confirmation: "password", ranking: [1200, 1623, 1423, 1523, 1613])
u4 = User.create!(username: "Bill", email: "bill@bill.com", password: "password", password_confirmation: "password", ranking: [1853, 1623, 1423, 1523, 1613])
u5 = User.create!(username: "Mike", email: "mike@mike.com", password: "password", password_confirmation: "password", ranking: [12000, 16203, 14023, 15203, 16103])
u6 = User.create!(username: "Sam", email: "sam@sam.com", password: "password", password_confirmation: "password", ranking: [2200, 2623, 2423, 2523, 2613])

l1 = League.create!(title: "Canterbury Squash", image: "http://media.groupspaces.com/thumb/s/17489659/h/54c01a7c691fc5135959fecb1a3dcdd4.jpg" , user_ids: [u1.id, u2.id], created_by: u1.id)
l2 = League.create!(title: "Paderborner Sc", image: "https://asc-paderborn.de/tl_files/asc/images/bg/default.jpg" , user_ids: [u1.id, u2.id, u3.id], created_by: u2.id)
l3 = League.create!(title: "Loughborough Squash", image: "http://loughboroughsport.com/au-squash/files/2014/08/web1.png" , user_ids: [u1.id, u2.id, u3.id], created_by: u1.id)
l4 = League.create!(title: "Joes League", image: "http://www.coolhurst.co.uk/wp-content/uploads/2014/02/SquashDoubles2.jpg", user_ids: [u1.id, u2.id, u3.id], created_by: u3.id)
l5 = League.create!(title: "Charing Cross", image: "http://www.coolhurst.co.uk/wp-content/uploads/2014/02/SquashDoubles2.jpg", user_ids: [u6.id, u5.id, u4.id], created_by: u3.id)

m1 = Match.create!(user_ids: [u1.id, u2.id], league_id: l2.id, score: [9,3,9,6,9,3], played: true)
m2 = Match.create!(user_ids: [u1.id, u3.id], league_id: l1.id, score: [11,3,11,6,11,3], played: true)
m3 = Match.create!(user_ids: [u1.id, u3.id], league_id: l1.id, score: [3,11,11,8,11,8,11,5], played: true)
m4 = Match.create!(user_ids: [u2.id, u3.id], league_id: l3.id, score: [3,11,11,8,11,8,11,5], played: true)
m5 = Match.create!(user_ids: [u2.id, u3.id], league_id: l4.id, score: [3,11,11,8,11,8,11,5], played: true)
m6 = Match.create!(user_ids: [u4.id, u5.id], league_id: l5.id, score: [3,11,11,8,11,8,11,5], played: true)
m7 = Match.create!(user_ids: [u1.id, u3.id], league_id: l4.id, score: [3,11,11,8,11,8,11,5], played: true)
m8 = Match.create!(user_ids: [u2.id, u4.id], league_id: l4.id, score: [], played: false)
m9 = Match.create!(user_ids: [u3.id, u5.id], league_id: l4.id, score: [], played: false)
m10 = Match.create!(user_ids: [u4.id, u6.id], league_id: l4.id, score: [], played: false)
m11 = Match.create!(user_ids: [u5.id, u1.id], league_id: l4.id, score: [], played: false)
m12 = Match.create!(user_ids: [u6.id, u2.id], league_id: l4.id, score: [], played: false)
m13 = Match.create!(user_ids: [u4.id, u3.id], league_id: l4.id, score: [], played: false)
m14 = Match.create!(user_ids: [u3.id, u1.id], league_id: l4.id, score: [], played: false)


Request.create(league_id: l1.id, sender_id: u3.id, reciever_id: u1.id)
Request.create(league_id: l1.id, sender_id: u1.id, reciever_id: u3.id)
Request.create(league_id: l1.id, sender_id: u2.id, reciever_id: u1.id)
Request.create(league_id: l1.id, sender_id: u4.id, reciever_id: u3.id)
Request.create(league_id: l1.id, sender_id: u5.id, reciever_id: u3.id)
Request.create(league_id: l1.id, sender_id: u6.id, reciever_id: u3.id)

Challenge.create(league_id: l1.id, sender_id: u3.id, reciever_id: u1.id)
Challenge.create(league_id: l2.id, sender_id: u1.id, reciever_id: u3.id)
Challenge.create(league_id: l3.id, sender_id: u2.id, reciever_id: u1.id)
Challenge.create(league_id: l4.id, sender_id: u4.id, reciever_id: u3.id)
Challenge.create(league_id: l5.id, sender_id: u5.id, reciever_id: u3.id)
Challenge.create(league_id: l5.id, sender_id: u6.id, reciever_id: u3.id)
