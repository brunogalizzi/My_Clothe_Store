require 'uri'

CartProduct.destroy_all
Product.destroy_all
User.destroy_all

blusas = Type.create(name: 'Blusas', size: ['P','M','G'], color: ['Azul', 'Amarelo', 'Red', 'Green'])
sapatos = Type.create(name: 'Sapatos', size: ['36','37','38','39','40','41','42'], color: ['Azul', 'Amarelo', 'Red', 'Green'])
user = User.create(email: "oi@oi.com", password: "123456")


file = URI.open('https://res.cloudinary.com/masterbi/image/upload/v1589497971/Demo/vermelho-claro-manga-curta_xidtar.png')
product = Product.new(name: 'Camisa vermelha - Manga longa', price: 129, type: blusas, user_id: user.id, stock: rand(1..5), size: blusas.size.sample, color: blusas.color.sample)
product.photos.attach(io: file, filename: 'camisa_vermelha.png', content_type: 'image/png')
product.save!

#-------------

file = URI.open('https://res.cloudinary.com/masterbi/image/upload/v1589497969/Demo/on%C3%A7a-manga-longa_lvsxll.png')
product = Product.new(name: 'Camisa de onça - Manga longa', price: 150, type: blusas, user_id: user.id, stock: rand(1..5), size: blusas.size.sample, color: blusas.color.sample)
product.photos.attach(io: file, filename: 'camisa_onca.png', content_type: 'image/png')
product.save!

#-------------

file = URI.open('https://res.cloudinary.com/masterbi/image/upload/v1589497956/Demo/sem-manga-branca_gtabwl.jpg')
product = Product.new(name: 'Camisa branca sem manga', price: 75, type: blusas, user_id: user.id, stock: rand(1..5), size: blusas.size.sample, color: blusas.color.sample)
product.photos.attach(io: file, filename: 'camisa_branca.png', content_type: 'image/png')
product.save!

#-------------

file = URI.open('https://res.cloudinary.com/masterbi/image/upload/v1589497951/Demo/blusa_feminina_manga_curta_nldw2f.jpg')
product = Product.new(name: 'Blusa cinza manga curta', price: 90, type: blusas, user_id: user.id, stock: rand(1..5), size: blusas.size.sample, color: blusas.color.sample)
product.photos.attach(io: file, filename: 'blusa_cinza.png', content_type: 'image/png')
product.save!

#-------------

file = URI.open('https://res.cloudinary.com/masterbi/image/upload/v1589497949/Demo/com-ondas-manga-longa_n6kgli.jpg')
product = Product.new(name: 'Camisa com ondas', price: 100, type: blusas, user_id: user.id, stock: rand(1..5), size: blusas.size.sample, color: blusas.color.sample)
product.photos.attach(io: file, filename: 'blusa_onda.png', content_type: 'image/png')
product.save!

#-------------

file = URI.open('https://res.cloudinary.com/masterbi/image/upload/v1589497949/Demo/blusas-femininas-manga_longa_tbbjnv.png')
product = Product.new(name: 'Blusa manga longa', price: 159, type: blusas, user_id: user.id, stock: rand(1..5), size: blusas.size.sample, color: blusas.color.sample)
product.photos.attach(io: file, filename: 'blusa_longa.png', content_type: 'image/png')
product.save!

#-------------

file = URI.open('https://res.cloudinary.com/masterbi/image/upload/v1589502489/Demo/tamanco_marrom_szheew.png')
product = Product.new(name: 'Tamanco Marrom', price: 129, type: sapatos, user_id: user.id, stock: rand(1..5), size: sapatos.size.sample, color: sapatos.color.sample)
product.photos.attach(io: file, filename: 'tamanco_marrom.png', content_type: 'image/png')
product.save!

#-------------

file = URI.open('https://res.cloudinary.com/masterbi/image/upload/v1589502488/Demo/tamanco_onca_ycawby.jpg')
product = Product.new(name: 'Tamanco de Onça', price: 109, type: sapatos, user_id: user.id, stock: rand(1..5), size: sapatos.size.sample, color: sapatos.color.sample)
product.photos.attach(io: file, filename: 'tamanco_onca.png', content_type: 'image/png')
product.save!

#-------------

file = URI.open('https://res.cloudinary.com/masterbi/image/upload/v1589502487/Demo/tamanco_vermelho_qz5zsb.png')
product = Product.new(name: 'Tamanco vermelho', price: 159, type: sapatos, user_id: user.id, stock: rand(1..5), size: sapatos.size.sample, color: sapatos.color.sample)
product.photos.attach(io: file, filename: 'tamanco_vermelho.png', content_type: 'image/png')
product.save!

# #-------------

file = URI.open('https://res.cloudinary.com/masterbi/image/upload/v1589502485/Demo/tamanco_preto_tcfpen.png')
product = Product.new(name: 'Tamanco preto', price: 159, type: sapatos, user_id: user.id, stock: rand(1..5), size: sapatos.size.sample, color: sapatos.color.sample)
product.photos.attach(io: file, filename: 'tamanco_preto.png', content_type: 'image/png')
product.save!

# #-------------

file = URI.open('https://res.cloudinary.com/masterbi/image/upload/v1589502482/Demo/sapato_diamante_c5wvur.png')
product = Product.new(name: 'Tamanco de diamantes', price: 159, type: sapatos, user_id: user.id, stock: rand(1..5), size: sapatos.size.sample, color: sapatos.color.sample)
product.photos.attach(io: file, filename: 'tamanco_diamante.png', content_type: 'image/png')
product.save!

# #-------------

file = URI.open('https://res.cloudinary.com/masterbi/image/upload/v1589502481/Demo/sapato_branco_mfjxb8.png')
product = Product.new(name: 'Sapato branco', price: 99, type: sapatos, user_id: user.id, stock: rand(1..5), size: sapatos.size.sample, color: sapatos.color.sample)
product.photos.attach(io: file, filename: 'sapato_branco.png', content_type: 'image/png')
product.save!

#-------------



# 20.times do
#   user = User.new(email: Faker::Name.name.partition(" ").first + '@' + Faker::Color.color_name + '.com', password: '#$taawktljasktlw4aaglj')
#   user.save!
# end

# 24.times do
#   product = Product.new(name: Faker::Vehicle.model, price: rand(100000..200000), size: ['small', 'medium', 'big'].sample, color: Faker::Color.color_name, stock: rand(1..3), brand: Faker::Vehicle.manufacture)
#   product.type = Type.all.sample
#   product.user = User.all.sample
#   product.save
# end
