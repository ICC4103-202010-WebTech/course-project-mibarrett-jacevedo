# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# EVENTS
ev1 = Event.create!(title: "Birthday Party",
                    user: u1)
ev2 = Event.create!(title: "Anniversary",
                    user: u1)
ev3 = Event.create!(title: "Run for cancer",
                    user: u2)
ev4 = Event.create!(title: "Dog meeting",
                    user: u3)
#COMMENTS
c1 = Comment.create!(user: u1,
                     event: ev1) #u1 creo ev1 y ev 2 y esta invitado a ev4
c2= Comment.create!(user: u1,
                    event: ev1)
c7= Comment.create!(user: u1,
                    event: ev4)
c3= Comment.create!(user: u2,
                    event: ev2) #u2 creo ev3 y esta invitado al ev2 y el ev1
c4 = Comment.create!(user: u2,
                     event:ev1)
c5 = Comment.create!(user: u2,
                     event:ev1)
c6= Comment.create!(user: u3,
                    event:ev4) #u3 creo el ev4 y esta invitado el ev3
c6= Comment.create!(user: u3,
                    event: ev3)


