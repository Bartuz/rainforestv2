# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

Product.delete_all

bieber_album = "http://upload.wikimedia.org/wikipedia/en/thumb/0/01/Believe-JB-Album.jpg/220px-Believe-JB-Album.jpg"

150.times do
	Product.create(
		name: "#{Faker::Lorem.word}".titleize,
		description: "#{Faker::Lorem.sentence(3)}",
		img_url: "#{bieber_album}",
		category: ["music","books","games"].sample,
		price: [0.1,1,20,50,32,99.43,100.3,999.43].sample,
		quantity: Random.rand(99)
	)
end