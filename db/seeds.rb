Request.destroy_all
Challenge.destroy_all
League.destroy_all
Match.destroy_all
User.destroy_all

u1 = User.create!(
username: "okirkness",
first_name: "Oli",
last_name: "Kirkness",
image: "https://media.licdn.com/mpr/mpr/shrinknp_200_200/AAEAAQAAAAAAAAfRAAAAJDRlZTU3YzRmLTI4ZmEtNDVjOS1iNzdlLTkxZmQyZWJjMWYyNA.jpg",
email: "oli@kirkness.com",
password: "password",
password_confirmation: "password" ,
ranking: [1000],
matches_won: 0
)
u2 = User.create!(
username: "nick_matthew",
first_name: "Nick",
last_name: "Matthew",
image: "http://squashmad.com/wp-content/uploads/2016/03/D4S5646.jpg",
email: "nick@matthew.com",
password: "password",
password_confirmation: "password" ,
ranking: [1000],
matches_won: 0
)
u3 = User.create!(
username: "miguel_rodriguez",
first_name: "Miguel",
last_name: "Rodriguez",
image: "http://squashmad.com/wp-content/uploads/2016/01/aDSC_6390.jpg",
email: "miguel@rodriguez.com",
password: "password",
password_confirmation: "password" ,
ranking: [1000],
matches_won: 0
)
u4 = User.create!(
username: "smooth_milky",
first_name: "Smooth",
last_name: "Milky",
image: "http://www.thescottishfarmer.co.uk/resources/images/5258377/",
email: "milk@smooth.com",
password: "password",
password_confirmation: "password" ,
ranking: [1000],
matches_won: 0
)
u5 = User.create!(
username: "ben_chang",
first_name: "Ben",
last_name: "Chang",
image: "http://i70.photobucket.com/albums/i99/gibbj77/Stuff/paintball-gun-on-community.jpg",
email: "ben@chang.com",
password: "password",
password_confirmation: "password" ,
ranking: [1000],
matches_won: 0
)
u6 = User.create!(
username: "master_codey",
first_name: "Jason",
last_name: "Wright",
image: "",
email: "jason@wright.com",
password: "password",
password_confirmation: "password" ,
ranking: [1000],
matches_won: 0
)
u6 = User.create!(
username: "joe",
first_name: "Joe",
last_name: "Lastname",
image: "",
email: "joe@lastname.com",
password: "password",
password_confirmation: "password" ,
ranking: [1000],
matches_won: 0
)



l1 = League.create!(
title: "CSRC Squash League",
image: "http://maidstonesquashclub.com/wp-content/uploads/2017/04/img_1981-1.jpg" ,
user_ids: [u1.id, u2.id, u3.id],
created_by: u1.id,
club: "Canterbury Squash Club"
)
l2 = League.create!(
title: "Lboro Squash League (2017)",
image: "http://loughboroughsport.com/au-squash/files/2014/08/web1.png" ,
user_ids: [u1.id, u4.id, u5.id, u6.id],
created_by: u4.id,
club: "Loughborough Students"
)
l3 = League.create!(
title: "Charing X 2's",
image: "http://www.ccsclub.co.uk/wp-content/uploads/main-squash4.jpg" ,
user_ids: [u2.id, u5.id, u6.id],
created_by: u6.id,
club: "Charring Cross Squash Club"
)
l4 = League.create!(
title: "PB Squash League",
image: "https://asc-paderborn.de/tl_files/asc/images/bg/default.jpg" ,
user_ids: [u2.id, u3.id, u5.id],
created_by: u3.id,
club: "Ahorn Sport-Park"
)




# l2 = League.create!(title: "Paderborner Sc", image: "https://asc-paderborn.de/tl_files/asc/images/bg/default.jpg" , user_ids: [u1.id, u2.id, u3.id], created_by: u2.id)
# l3 = League.create!(title: "Loughborough Squash", image: "http://loughboroughsport.com/au-squash/files/2014/08/web1.png" , user_ids: [u1.id, u2.id, u3.id], created_by: u1.id)
# l4 = League.create!(title: "Joes League", image: "http://www.coolhurst.co.uk/wp-content/uploads/2014/02/SquashDoubles2.jpg", user_ids: [u1.id, u2.id, u3.id], created_by: u3.id)
# l5 = League.create!(title: "Charing Cross", image: "http://www.coolhurst.co.uk/wp-content/uploads/2014/02/SquashDoubles2.jpg", user_ids: [u6.id, u5.id, u4.id], created_by: u6.id)

# m1 = Match.create!(
# user_ids: [u1.id, u2.id],
# league_id: l2.id, score: [9,3,9,6,9,3],
# played: true
# )

# m2 = Match.create!(user_ids: [u1.id, u3.id], league_id: l1.id, score: [11,3,11,6,11,3], played: true)
# m3 = Match.create!(user_ids: [u1.id, u3.id], league_id: l1.id, score: [3,11,11,8,11,8,11,5], played: true)
# m4 = Match.create!(user_ids: [u2.id, u3.id], league_id: l3.id, score: [3,11,11,8,11,8,11,5], played: true)
# m5 = Match.create!(user_ids: [u2.id, u3.id], league_id: l4.id, score: [3,11,11,8,11,8,11,5], played: true)
# m6 = Match.create!(user_ids: [u4.id, u5.id], league_id: l5.id, score: [3,11,11,8,11,8,11,5], played: true)
# m7 = Match.create!(user_ids: [u1.id, u3.id], league_id: l4.id, score: [3,11,11,8,11,8,11,5], played: true)
# m8 = Match.create!(user_ids: [u2.id, u4.id], league_id: l4.id, score: [], played: false)
# m9 = Match.create!(user_ids: [u3.id, u5.id], league_id: l4.id, score: [], played: false)
# m10 = Match.create!(user_ids: [u4.id, u6.id], league_id: l4.id, score: [], played: false)
# m11 = Match.create!(user_ids: [u5.id, u1.id], league_id: l4.id, score: [], played: false)
# m12 = Match.create!(user_ids: [u6.id, u2.id], league_id: l4.id, score: [], played: false)
# m13 = Match.create!(user_ids: [u4.id, u3.id], league_id: l4.id, score: [], played: false)
# m14 = Match.create!(user_ids: [u3.id, u1.id], league_id: l4.id, score: [], played: false)
#
#
# Request.create(league_id: l1.id, sender_id: u3.id, reciever_id: u1.id)
# Request.create(league_id: l1.id, sender_id: u1.id, reciever_id: u3.id)
# Request.create(league_id: l1.id, sender_id: u2.id, reciever_id: u1.id)
# Request.create(league_id: l1.id, sender_id: u4.id, reciever_id: u3.id)
# Request.create(league_id: l1.id, sender_id: u5.id, reciever_id: u3.id)
# Request.create(league_id: l1.id, sender_id: u6.id, reciever_id: u3.id)
#
# Challenge.create(league_id: l1.id, sender_id: u3.id, reciever_id: u1.id)
# Challenge.create(league_id: l2.id, sender_id: u1.id, reciever_id: u3.id)
# Challenge.create(league_id: l3.id, sender_id: u2.id, reciever_id: u1.id)
# Challenge.create(league_id: l4.id, sender_id: u4.id, reciever_id: u3.id)
# Challenge.create(league_id: l5.id, sender_id: u5.id, reciever_id: u3.id)
# Challenge.create(league_id: l5.id, sender_id: u6.id, reciever_id: u3.id)
# Challenge.create(league_id: l2.id, sender_id: u3.id, reciever_id: u1.id)
# Challenge.create(league_id: l2.id, sender_id: u1.id, reciever_id: u3.id)
# Challenge.create(league_id: l3.id, sender_id: u2.id, reciever_id: u1.id)
# Challenge.create(league_id: l5.id, sender_id: u4.id, reciever_id: u3.id)
# Challenge.create(league_id: l4.id, sender_id: u5.id, reciever_id: u3.id)
# Challenge.create(league_id: l2.id, sender_id: u6.id, reciever_id: u3.id)
