# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require "faker"
City.destroy_all
Dog.destroy_all
Dogsister.destroy_all
Stroll.destroy_all


20.times do
	c = City.create(name: Faker::Address.city)
end
	puts '20 cities added'
	puts "----------------------"

20.times do
	d = Dog.create(nickname: Faker::Movies::StarWars.droid, city: City.all.sample)
	puts "Dog #{d.nickname}"

end
	puts "----------------------"

10.times do
	ds = Dogsister.create(name: Faker::Movies::StarWars.character, city: City.all.sample)
	puts "Dogsister #{ds.name}"
end
	puts "----------------------"

# On cree des stroll qui ont un dogsitter
20.times do
	h = Stroll.create(dogsister_id: Dogsister.all.sample, city: City.all.sample)
	puts "Stoll #{h.city}"

end