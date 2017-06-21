# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do 
	Client.create(
		firstname: Faker::Name.first_name,
		lastname: Faker::Name.last_name,
		streetname: Faker::Address.street_address,
		aptnumber: Faker::Address.secondary_address,
		borough: "Brooklyn",
		notes: Faker::Lorem.sentence(1),
		user_id: rand(1..10)
		)
end

10.times do 
	Job.create(
		name: Faker::Lorem.word,
		jobdate: "10-19-2017",
		payrate: rand(1..50),
		category_id: rand(1..10),
		paid: [true, false].sample,
		equipment: Faker::Lorem.sentence(1),
		user_id: rand(1..10)
		)
end



10.times do 
	User.create(
		name: Faker::Name.name,
		password:  SecureRandom.hex,
		email: Faker::Internet.email
		)
end

Category.create(
	title: "babysitting"
	)

Category.create(
	title: "catering"
	)

Category.create(
	title: "photographer"
	)

Category.create(
	title: "web design"
	)

Category.create(
	title: "research"
	)

Category.create(
	title: "administrative"
	)

Category.create(
	title: "tutoring"
	)

Category.create(
	title: "accounting"
	)

Category.create(
	title: "dog walking"
	)

Category.create(
	title: "copywriting"
	)

10.times do 
	Client.create(
		firstname: Faker::Name.first_name,
		lastname: Faker::Name.last_name,
		streetname: Faker::Address.street_address,
		aptnumber: Faker::Address.secondary_address,
		borough: "Brooklyn",
		notes: Faker::Lorem.sentence(1)
		)
end

10.times do 
	Job.create(
		name: Faker::Lorem.word,
		jobdate: 2017-07-07,
		payrate: rand(1..50),
		category_id: rand(1..10),
		paid: [true, false].sample,
		equipment: Faker::Lorem.sentence(1)
		)
end

 