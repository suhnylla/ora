# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ActiveRecord::Base.transaction do
	50.times do 
		User.create(
			:email => Faker::Internet.email,
			:password => Faker::Name.name
			)
	end

	50.times do
		Offer.create(
			:title => Faker::LordOfTheRings.character,
			:offer_description => Faker::ChuckNorris.fact,
			:offer_category => Faker::Pokemon.name,
			:token => rand(1..100),
			:user_id => rand(1..50)
			)
	end
end