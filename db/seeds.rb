# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Type.create(name: 'SUV', size: ['S','M','L'], color: ['blue', 'yellow', 'red', 'green'])
Type.create(name: 'Sports', size: ['S','M','L'], color: ['blue', 'yellow', 'red', 'green'])
Type.create(name: 'Classic', size: ['S','M','L'], color: ['blue', 'yellow', 'red', 'green'])

20.times do
  user = User.new(name: Faker::Name.name, password: '123321')
  user.email = (Faker::Internet.email(name: user.name.partition(" ").first))
  user.save
end

100.times do
  product = Product.new(name: Faker::Vehicle.model, price: rand(100000..200000), size: ['small', 'medium', 'big'].sample, color: Faker::Color.color_name, stock: rand(1..3), brand: Faker::Vehicle.manufacture)
  product.type = Type.all.sample
  product.user = User.all.sample
  product.save
end
