# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




img = ["https://image.ibb.co/b8UJBc/administration_architecture_big_ben_221166.jpg", "https://image.ibb.co/mmyvrc/anniversary_balloons_birthday_68369.jpg",
	"https://image.ibb.co/hQaarc/antique_blur_camera_828378.jpg",
    "https://image.ibb.co/crFarc/pexels_photo_100756.jpg",
    "https://image.ibb.co/fvekrc/action_adult_art_673649.jpg" ]


caption = ["I Miss London", "Love ballons", "Vintage life ","Summer Day", "Art"]

    
5.times do |n| 

	Polaroid.create!([{
		

		caption: caption[n],
		image: img[n]
		}])

	
end

puts("Done!")