# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
UserProduct.destroy_all
Product.destroy_all

u1 = User.create(name: 'Sara', username: 'sbastian', skin_type: 'oily')
u2 = User.create(name: 'Sienna', username: 'smori', skin_type: 'combination')
u3 = User.create(name: 'Rachel', username: 'rsmith', skin_type: 'dry')

p1 = Product.create(brand: '')
up1 = UserProduct.create(user_id: u1.id, product_id: p1.id)