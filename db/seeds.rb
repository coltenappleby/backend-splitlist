# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Userlist.destroy_all
Item.destroy_all
List.destroy_all
User.destroy_all

User.create(name: "Colten Appleby", email: 'colten@appleby.com', phone_number: 1356)
User.create(name: "Catherine", email: 'frin@email.com', phone_number: 46351)


List.create(name: "Movies")
Userlist.create(user_id: User.second.id, list_id: List.find_by(name: "Movies").id, owner: true, editor: true, viewer: true)
List.create(name: "Twin Peaks")
Userlist.create(user_id: User.first.id, list_id: List.find_by(name: "Twin Peaks").id)
List.create(name: "Star Wars")
Userlist.create(user_id: User.first.id, list_id: List.find_by(name: "Star Wars").id)

10.times do 
    Item.create(
        name: Faker::Movie.title, 
        notes: Faker::Lorem.sentence(word_count: 3), 
        user_id: User.second.id,
        list_id: List.find_by(name: "Movies").id,
        location: Faker::Address.city
    )
    Item.create(
        name: Faker::Movies::StarWars.character, 
        notes: Faker::Movies::StarWars.quote, 
        user_id: User.first.id,
        list_id: List.find_by(name: "Star Wars").id,
        location: Faker::Address.city
    )
    Item.create(
        name: Faker::TvShows::TwinPeaks.character, 
        notes: Faker::TvShows::TwinPeaks.quote, 
        user_id: User.first.id,
        list_id: List.find_by(name: "Twin Peaks").id,
        location: Faker::TvShows::TwinPeaks.location
    )

end
