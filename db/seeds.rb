# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



5.times do |n| 

	Polaroid.create!([{
		caption: "lodon#{n} ",
		image: "https://s7.postimg.org/8g5wro4sb/administration-architecture-big-ben-221166.jpg"
		}])

	
end

puts("Done!")