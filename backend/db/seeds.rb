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

p1 = Product.create(brand: "COSRX", name: "Hyaluronic Acid Hydra Foam Cleanser", skin_type: "Dry", step: "Cleanser", img_url: " ")
p2 = Product.create(brand: "COSRX", name: "Salicylic Acid Exfoliating Cleanser", skin_type: "Oily", step: "Cleanser", img_url: " ")
p3 = Product.create(brand: "Innisfree", name: "Apple Juicy Liquid Foaming Cleanser", skin_type: "Normal", step: "Cleanser", img_url: " ")
p4 = Product.create(brand: "Laneige", name: "Multi Cleanser", skin_type: "Combination", step: "Cleanser", img_url: " ")

p5 = Product.create(brand: "Amore Pacific", name: "Time Response Skin Renewal Toner", skin_type: "Dry", step: "Toner", img_url: " ")
p6 = Product.create(brand: "Amore Pacific", name: "Treatment Toner", skin_type: "Oily", step: "Toner", img_url: " ")
p7 = Product.create(brand: "belif", name: "Bergamot Herbal Extract Toner", skin_type: "Combination", step: "Toner", img_url: " ")
p8 = Product.create(brand: "belif", name: "Eucalyptus Herbal Extract Toner", skin_type: "Normal", step: "Toner", img_url: " ")

p9 = Product.create(brand: "Mario Badescu", name: "Vitamin C Serum", skin_type: "Normal", step: "Serum", img_url: " ")
p10 = Product.create(brand: "Mario Badescu", name: "Hydro Moisturizer With Vitamin C", skin_type: "Dry", step: "Serum", img_url: " ")
p11 = Product.create(brand: "Ciracle", name: "Pore Control Tightening Serum", skin_type: "Oily", step: "Serum", img_url: " ")
p12 = Product.create(brand: "La Mer", name: "The Regenerating Serum", skin_type: "Combination" step: "Serum", img_url: " ")

p13 = Product.create(brand: "Kiehl's", name: "Breakout Control Targeted Acne Spot Treatment" skin_type: "Normal", step: "Spot Treatment", img_url: " ")
p14 = Product.create(brand: "La Mer", name: "The Treatment Lotion", skin_type: "Dry", step: "Spot Treatment", img_url: " ")
p15 = Product.create(brand: "Sunday Riley", name: "Good Genes All-In-One Lactic Acid Treatment" skin_type: "Oily", step: "Spot Treatment", img_url: " ")
p16 = Product.create(brand: "Kiehl's", name: "Blue Herbal Spot Treatment" skin_type: "Combination" step: "Spot Treatment", img_url: " ")

p17 = Product.create(brand: "Kiehl's", name: "Ultra Facial Moisturizer", skin_type: "Normal", step: "Moisturizer", img_url: " ")
p18 = Product.create(brand: "Mario Badescu", name: "Hydro Moisturizer With Vitamin C", skin_type: "Dry", step: "Moisturizer", img_url: " ")
p19 = Product.create(brand: "Missha", name: "Super Aqua Cell Renew Snail Essential Moisturizer", skin_type: "Oily", step: "Moisturizer", img_url: " ")
p20 = Product.create(brand: "belif", name: "Creamy Deep Moist Moisturizer", skin_type: "Combination" step: "Moisturizer", img_url: " ")

p21 = Product.create(brand: "Laneige", name: "Triple Sunscreen SPF 40", skin_type: "Normal", step: "SPF", img_url: " ")
p22 = Product.create(brand: "COSRX", name: "Aloe Soothing Sun Cream SPF 50+ PA+++", skin_type: "Dry", step: "SPF", img_url: " ")
p23 = Product.create(brand: "Biore", name: "V Face Milk SPF 50+ PA++++", skin_type: "Oily", step: "SPF", img_url: " ")
p24 = Product.create(brand: "Banila Co", name: "It Radiant CC Cream SPF30 PA++,", skin_type: "Combination" step: "SPF", img_url: " ")

up1 = UserProduct.create(user_id: u1.id, product_id: p1.id)
