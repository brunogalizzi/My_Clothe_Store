# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Type.create(name: 'Blusas', size: ['S','M','L'], color: ['blue', 'yellow', 'red', 'green'])
Type.create(name: 'Sapatos', size: ['S','M','L'], color: ['blue', 'yellow', 'red', 'green'])

20.times do
  user = User.new(email: Faker::Name.name.partition(" ").first + '@' + Faker::Color.color_name + '.com', password: '#$taawktljasktlw4aaglj')
  user.save!
end

24.times do
  product = Product.new(name: Faker::Vehicle.model, price: rand(100000..200000), size: ['small', 'medium', 'big'].sample, color: Faker::Color.color_name, stock: rand(1..3), brand: Faker::Vehicle.manufacture)
  product.type = Type.all.sample
  product.user = User.all.sample
  product.save
end
