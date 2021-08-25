# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.destroy_all
List.destroy_all
Userlist.destroy_all
Item.destroy_all

User.create(name: "Colten Appleby", email: 'colten@appleby.com', phone_number: 1356)


List.create(name: "movies", active: true)
List.create(name: "Twin Peaks", active: true)