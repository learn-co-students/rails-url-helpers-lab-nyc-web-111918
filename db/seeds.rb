# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Student.create(first_name: "Matt", last_name: "Doering")
Student.create(first_name: "Ashley", last_name: "Pierson")
Student.create(first_name: "Nick", last_name: "Doering", active: true)
