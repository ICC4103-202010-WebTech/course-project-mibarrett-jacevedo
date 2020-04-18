# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# #USER
 u1 = User.create!(username:"pablolopez1", email:"palopez@gmail.com", password:"pab123", role:1, full_name:"Pablo Lopez")
 u2 = User.create!(username:"mariapd", email:"mariapizarro1@gmail.com", password:"mypass9", role:1, full_name:"Maria Pizarro")
 u3 = User.create!(username:"carlosjones", email:"carlos_jm@hotmail.com", password:"cuttles3", role:1, full_name:"Carlos Jones")
 u4 = User.create!(username:"robertR2", email:"robocop@gmail.com", password:"rocky7", role:1, full_name:"Robert Patrick")
 u5 = User.create!(username:"miaPerez", email:"mp_rosales@gmail.com", password:"mp2000", role:1, full_name:"Mia Rosales")
 u6 = User.create!(username:"pedromontes", email:"pmontes1@gmail.com", password:"pmo2001", role:1, full_name:"Pedro Montes")
 u7 = User.create!(username:"rosagonzalez2", email:"ro_g123@gmail.com", password:"cat60", role:1, full_name:"Rosa Gonzalez")
 u8 = User.create!(username:"mramirez4", email:"mayar@gmail.com", password:"password1", role:1, full_name:"Maya Ramirez")
 u9 = User.create!(username:"pacita2m", email:"mariapazmar@hotmail.com", password:"martinez23", role:2, full_name:"Maria Paz Mardones")
 u10 = User.create!(username:"alejandro_r", email:"alerojas@gmail.com", password:"chile34", role:1, full_name:"Alejandro Rojas")
 u11 = User.create!(username:"georgew", email:"georgewes1@gmail.com", password:"washington6", role:1, full_name:"George Wesley")
 u12 = User.create!(username:"theodorem", email:"theomax@hotmail.com", password:"theo3", role:2, full_name:"Theodore Maxwell")
#
# #EVENTS
 e1 = Event.create!(title: "Birthday Party",user: u1, description: "My birthday is coming ups and i would like to celebrate with all of you!", location:"Avenida la Dehesa 2000", starting_vote_day: DateTime.parse("2020-05-02 19:30:00 UTC-4"))
 e2 = Event.create!(title: "Anniversary",user: u1, description: "For 20 years now this organization has given us so much to learn", location:"Avenida Larrain 10998", starting_vote_day: DateTime.parse("2020-04-07 11:00:00 UTC-4"))
 e3 = Event.create!(title: "Run for cancer",user: u2, description: "It is a race to colect for people suffering through this frustrating disease", location:"Padre Hurtado Sur 2334", starting_vote_day: DateTime.parse("2020-06-01 20:00:00 UTC-4"))
 e4 = Event.create!(title: "Dog meeting",user: u3, description: "As you know this is a very important subject we are in need to discuss", location:"Lo Beltran 2700", starting_vote_day: DateTime.parse("2020-05-20 10:00:00 UTC-4"))
#
# #EVENTVOTE
 ev1 = EventVote.create!(event: e1, day: 1, user:u6)
 ev2 = EventVote.create!(event: e1, day: 1, user:u2)
 ev3 = EventVote.create!(event: e2, day: 2, user:u7)
 ev4 = EventVote.create!(event: e2, day: 3, user:u2)
 ev5 = EventVote.create!(event: e3, day: 2, user:u8)
 ev6 = EventVote.create!(event: e4, day: 3, user:u4)
 ev7 = EventVote.create!(event: e2, day: 2, user:u10)
 ev8 = EventVote.create!(event: e3, day: 2, user:u11)
 ev9 = EventVote.create!(event: e4, day: 2, user:u9)
 ev10 = EventVote.create!(event: e2, day: 2, user:u12)
 ev11 = EventVote.create!(event: e4, day: 2, user:u1)
 ev12 = EventVote.create!(event: e3, day: 2, user:u3)
#
# #EVENTGUEST
 eg1 = EventGuest.create!(event:e1, user:u1)#creador
 eg2 = EventGuest.create!(event:e2, user:u1)#creador
 eg3 = EventGuest.create!(event:e3, user:u2)#creador
 eg4 = EventGuest.create!(event:e4, user:u3)#creador
 eg5 = EventGuest.create!(event:e4, user:u4)
 eg6 = EventGuest.create!(event:e1, user:u6)
 eg7 = EventGuest.create!(event:e2, user:u7)
 eg8 = EventGuest.create!(event:e3, user:u8)
 eg9 = EventGuest.create!(event:e4, user:u9)
 eg10 = EventGuest.create!(event:e2, user:u10)
 eg11 = EventGuest.create!(event:e3, user:u11)
 eg12 = EventGuest.create!(event:e2, user:u12)
 eg13 = EventGuest.create!(event:e4, user:u1)
 eg14 = EventGuest.create!(event:e2, user:u2)
 eg15 = EventGuest.create!(event:e1, user:u2)
 eg16 = EventGuest.create!(event:e3, user:u3)
#
# #ORGANIZATIONS
 o1 = Organization.create!(name:"Soreco", administrator:u1, description:"We are a serious aboy global warming")
 o2 = Organization.create!(name:"Corma", administrator:u7, description:"Choose others, regret it tomorrow")
 o3 = Organization.create!(name:"DobleA", administrator:u12, description:"Double your finanzes with us")
#
# #EVENTORGANIZATION
 eo1 = EventOrganization.create!(event: e1, organization: o1, priv_or_pub:1)
 eo2 = EventOrganization.create!(event: e2, organization: o1, priv_or_pub:1)
 eo3 = EventOrganization.create!(event: e3, organization: o1, priv_or_pub:2)
 eo4 = EventOrganization.create!(event: e4, organization: o1, priv_or_pub:2)
#
# #ORGANIZATIONUSER
 ou1 = OrganizationUser.create!(organization: o1, user:u1)
 ou2 = OrganizationUser.create!(organization: o1, user:u2)
 ou3 = OrganizationUser.create!(organization: o1, user:u3)
 ou4 = OrganizationUser.create!(organization: o1, user:u4)
 ou5 = OrganizationUser.create!(organization: o2, user:u5)
 ou6 = OrganizationUser.create!(organization: o2, user:u6)
 ou7 = OrganizationUser.create!(organization: o2, user:u7)
 ou8 = OrganizationUser.create!(organization: o2, user:u8)
 ou9 = OrganizationUser.create!(organization: o3, user:u9)
 ou10 = OrganizationUser.create!(organization: o3, user:u10)
 ou11 = OrganizationUser.create!(organization: o3, user:u11)
 ou12 = OrganizationUser.create!(organization: o3, user:12)
#
# #COMMENTS
 c1 = Comment.create!(user: u1,event: e1, message: "Happy Birthday!") #u1 creo ev1 y ev 2 y esta invitado a ev4
 c2= Comment.create!(user: u1,event: e1, message: "Have a nice day!")
 c7= Comment.create!(user: u1,event: e4, message: "Who let the dogs out?")
 c3= Comment.create!(user: u2,event: e2, message: "Happy anniversary!") #u2 creo ev3 y esta invitado al ev2 y el ev1
 c4 = Comment.create!(user: u2,event:e1, message: "Hope you celebrate many moree")
 c5 = Comment.create!(user: u2,event:e1, message: "Are you celebrating?")
 c6= Comment.create!(user: u3,event:e4, message: "Watch your step") #u3 creo el ev4 y esta invitado el ev3
 c6= Comment.create!(user: u3,event: e3, message: "I will beat cancer in this race")


