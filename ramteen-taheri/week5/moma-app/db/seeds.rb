Artist.destroy_all

puts "Creating artists..."

Artist.create name: 'Lee Krasner', nationality: 'USA', dob: '1985/07/20', period: '20th Century', image: 'https://i.pinimg.com/736x/05/62/14/0562148ce05f206e7ad773dc65d565bc--lee-krasner-abstract-expressionism.jpg', roundness: 5, bio: 'Abstract Expressionist'

Artist.create name: 'Bruce Lee', nationality: 'China', dob: '1985/07/20', period: '20th Century', image: 'https://cdn.britannica.com/18/66018-050-AA222E0F/Bruce-Lee-scene-Enter-the-Dragon-1973.jpg', roundness: 2, bio: 'One inch punch'

Artist.create name: 'Billy Madison', nationality: 'USA', dob: '1985/07/20', period: '20th Century', image: 'https://coxrare.files.wordpress.com/2017/02/billy-madison.jpg?w=1200&h=627&crop=1', roundness: 2, bio: 'Stop looking at me swan!'

puts "Created #{Artist.all.length} artists:"
puts Artist.pluck(:name).join(', ')