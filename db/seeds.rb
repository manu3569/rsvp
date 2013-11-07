# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

manuel = User.create(name: "Manuel Neuhauser")
manuel.events.create(title: "Geburtstag", date: "2014-04-16 19:00")

logan  = User.create(name: "Logan Hasson")
logan.events.create(title: "B-party", date: "2014-01-11 17:00")

josh   = User.create(name: "Josh Scaglione")
josh.events.create(title: "Birthday Bash", date: "2014-07-18 18:00")

matt   = User.create(name: "Matt Campbell")
matt.events.create(title: "Graduation Party", date: "2013-12-13 20:00")


manuel.events.first.invites.create(user: logan)
manuel.events.first.invites.create(user: josh)
manuel.events.first.invites.create(user: matt)

logan.events.first.invites.create(user: manuel)
logan.events.first.invites.create(user: josh)

josh.events.first.invites.create(user: logan)
josh.events.first.invites.create(user: manuel)

matt.events.first.invites.create(user: logan)
matt.events.first.invites.create(user: josh)
matt.events.first.invites.create(user: manuel)

