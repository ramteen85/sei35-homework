Planet.destroy_all

puts 'Populating the solar system...'

Planet.create name: 'Earth', orbit: 1, mass: 1, diameter: 1, moons: 1, image: 'https://static.techspot.com/images2/news/bigimage/2019/11/2019-11-21-image-6.png'

Planet.create name: 'Mars', orbit: 687, mass: 0.2, diameter: 0.1, moons: 3, image: 'https://resize.hswstatic.com/w_907/gif/mars-methane.jpg'

Planet.create name: 'Venus', orbit: 1, mass: 1, diameter: 1, moons: 1, image: 'https://en.es-static.us/upl/2019/08/Venus-atmosphere-composite-image-Akatsuki-800x800.jpg'

Planet.create name: 'Uranus', orbit: 1, mass: 1, diameter: 1, moons: 1, image: 'http://www.astronomytrek.com/wp-content/uploads/2012/11/uranus-1.jpg'

puts "Done! Created #{Planet.count} planets:"
puts Planet.pluck(:name)