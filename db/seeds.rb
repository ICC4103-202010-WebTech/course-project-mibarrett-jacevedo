# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# #USER
u1 = User.create!(username:"pablolopez1", email:"palopez@gmail.com", password:"pab123111", role:1)
u2 = User.create!(username:"mariapd", email:"mariapizarro1@gmail.com", password:"mypass9111", role:1)
u3 = User.create!(username:"carlosjones", email:"carlos_jm@hotmail.com", password:"cuttles3111", role:1)
u4 = User.create!(username:"robertR2", email:"robocop@gmail.com", password:"rocky7111", role:1)
u5 = User.create!(username:"miaPerez", email:"mp_rosales@gmail.com", password:"mp2000111", role:1)
u6 = User.create!(username:"pedromontes", email:"pmontes1@gmail.com", password:"pmo2001111", role:1)
u7 = User.create!(username:"rosagonzalez2", email:"ro_g123@gmail.com", password:"cat60111", role:1)
u8 = User.create!(username:"mramirez4", email:"mayar@gmail.com", password:"password11111", role:1)
u9 = User.create!(username:"pacita2m", email:"mariapazmar@hotmail.com", password:"martinez23111", role:2)
u10 = User.create!(username:"alejandro_r", email:"alerojas@gmail.com", password:"chile341111", role:1)
u11 = User.create!(username:"georgew", email:"georgewes1@gmail.com", password:"washington61111", role:1)
u12 = User.create!(username:"theodorem", email:"theomax@hotmail.com", password:"theo31111", role:1)


#PROFILE
#p1 = Profile.create!(name: "Pablo Lopez", biography: "I am a party animal", user: u1)
#p2 = Profile.create!(name: "Maria Pizarro", biography: "Ingeniero mencion Obras Civiles", user: u2)
#p3 = Profile.create!(name:"Carlos Jones", biography: "Agricultor de dia, Batman de noche", user: u3)
#p4 = Profile.create!(name: "Robert Patrick", biography: "Artista abstracto minimalista contemporaneo", user: u4)
#p5 = Profile.create!(name: "Mia Rosales", biography: "Industrias Monsters Inc", user: u5)
#p6 = Profile.create!(name: "Pedro Montes", biography: "Jefa de mesa", user: u6)
#p7 = Profile.create!(name: "Rosa Gonzalez", biography: "Logistica de transporte", user: u7)
#p8 = Profile.create!(name: "Maya Ramirez", biography: "Locutor de radio", user: u8)
#p9 = Profile.create!(name: "Maria Paz Mardones", biography: "Tecnologo en alimentos veganos", user: u9)
#p10 = Profile.create!(name: "Alejandro Rojas", biography: "Enfermera geriatra", user: u10)
#p11 = Profile.create!(name: "George Wesley", biography: "Instructor de vuelo en parapente", user: u11)
#p12 = Profile.create!(name: "Theodore Maxwell", biography: "Piloto de avion", user: u12)

#EVENTS
e1 = Event.create!(title: "Birthday Party",user: u1, description: "My birthday is coming ups and i would like to celebrate with all of you!", location:"Avenida la Dehesa 2000", privorpub:1)
e2 = Event.create!(title: "Anniversary",user: u1, description: "For 20 years now this organization has given us so much to learn", location:"Avenida Larrain 10998", privorpub:1)
e3 = Event.create!(title: "Run for cancer",user: u2, description: "It is a race to colect for people suffering through this frustrating disease", location:"Padre Hurtado Sur 2334", privorpub:2)
e4 = Event.create!(title: "Dog meeting",user: u3, description: "As you know this is a very important subject we are in need to discuss", location:"Lo Beltran 2700", privorpub:2)

#EVENTOPTION
eov1 = EventOption.create!(event: e1, day:"01/01/2017 07:00")
eov2 = EventOption.create!(event: e2, day:"05/02/2020 08:32")
eov3 = EventOption.create!(event: e2, day:"13/11/1973 12:16")
eov4 = EventOption.create!(event: e2, day:"27/05/1998 14:11")
eov5 = EventOption.create!(event: e3, day:"18/09/2002 11:06")
eov6 = EventOption.create!(event: e3, day:"16/12/1996 18:23")
eov7 = EventOption.create!(event: e4, day:"22/11/2011 21:16")
eov8 = EventOption.create!(event: e4, day:"24/07/2004 06:15")
eov9 = EventOption.create!(event: e1, day:"08/04/2018 07:00")

#EVENTVOTE
ev1 = EventVote.create!(event_option: eov1, user:u6)
ev2 = EventVote.create!(event_option: eov1, user:u2)
ev3 = EventVote.create!(event_option: eov3, user:u7)
ev4 = EventVote.create!(event_option: eov4, user:u2)
ev5 = EventVote.create!(event_option: eov6, user:u8)
ev6 = EventVote.create!(event_option: eov8, user:u4)
ev7 = EventVote.create!(event_option: eov3, user:u10)
ev8 = EventVote.create!(event_option: eov6, user:u11)
ev9 = EventVote.create!(event_option: eov7, user:u9)
ev10 = EventVote.create!(event_option: eov2, user:u12)
ev11 = EventVote.create!(event_option: eov8, user:u1)
ev12 = EventVote.create!(event_option: eov5, user:u3)

#EVENTGUEST
#eg1 = EventGuest.create!(event:e1, user:u1)#creador
#eg2 = EventGuest.create!(event:e2, user:u1)#creador
#eg3 = EventGuest.create!(event:e3, user:u2)#creador
#eg4 = EventGuest.create!(event:e4, user:u3)#creador
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
o1 = Organization.create!(name:"Soreco", user:u1, description:"We are a serious aboy global warming")
o2 = Organization.create!(name:"Corma", user:u7, description:"Choose others, regret it tomorrow")
o3 = Organization.create!(name:"DobleA", user:u12, description:"Double your finanzes with us")
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
ou12 = OrganizationUser.create!(organization: o3, user:u12)

#COMMENTS
c1 = Comment.create!(user: u1,event: e1, message: "Happy Birthday!") #u1 creo ev1 y ev 2 y esta invitado a ev4
c2= Comment.create!(user: u1,event: e1, message: "Have a nice day!")
c3= Comment.create!(user: u2,event: e2, message: "Happy anniversary!") #u2 creo ev3 y esta invitado al ev2 y el ev1
c4= Comment.create!(user: u2, event:e1, message: "Hope you celebrate many more!")
c5 = Comment.create!(user: u2,event:e1, message: "Are you celebrating?")
c6= Comment.create!(user: u3,event:e4, message: "Watch your step") #u3 creo el ev4 y esta invitado el ev3
c7= Comment.create!(user: u3,event: e3, message: "I will beat cancer in this race")

#REPLIES
r1 = Reply.create!(user: u2, comment: c1, message: "Yay so exciting!")
r2 = Reply.create!(user: u1, comment: c1, message: "Are you bringing anybody to the party?")
r3 = Reply.create!(user: u1, comment: c1, message: "This is gonna be Legen - wait for it - dary!")


#MESSAGE
me1 = Message.create!(user: u1, content: "hi can we be friends?", mailbox: Mailbox.first)
me2 = Message.create!(user: u2, content: "will you come to my event?", mailbox: Mailbox.first)
me3 = Message.create!(user: u3, content: "what date would you prefer for your event?", mailbox: Mailbox.first)
me4 = Message.create!(user: u4, content: "want to go with me to this event?", mailbox: Mailbox.first)
me5 = Message.create!(user: u5, content: "hello, what is your name", mailbox: Mailbox.first)
me6 = Message.create!(user: u6, content: "please come to my event", mailbox: Mailbox.first)
me7 = Message.create!(user: u7, content: "i dont understand what the event is about", mailbox: Mailbox.first)