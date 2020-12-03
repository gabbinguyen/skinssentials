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

p1 = Product.create(brand: "COSRX", name: "Hyaluronic Acid Hydra Foam Cleanser", skin_type: "Dry", step: "Cleanser", img_url: "https://akamai.poxo.com/beautyboxkorea/beautyboxkorea.cafe24.com/web/product/big/CIRACLE-COSRX-Hyaluronic-Acid-Hydra-Foam-Cleanser-150ml.jpg")
p2 = Product.create(brand: "COSRX", name: "Salicylic Acid Exfoliating Cleanser", skin_type: "Oily", step: "Cleanser", img_url: "https://www.cosrx.com/media/catalog/product/s/a/salicylic-acid-daily-gentle-cleanser_1.png?quality=90&fit=bounds&height=&width=&canvas=:")
p3 = Product.create(brand: "Innisfree", name: "Apple Juicy Liquid Foaming Cleanser", skin_type: "Normal", step: "Cleanser", img_url: "https://img.makeupalley.com/thumb/h/350/0_0_0_1_3660272.jpeg")
p4 = Product.create(brand: "Laneige", name: "Multi Cleanser", skin_type: "Combination", step: "Cleanser", img_url: "https://cdn.shopify.com/s/files/1/0255/0189/2660/products/Multi-Deep-Clean_2000x2000_61cde8f1-5e9a-4ef7-8840-77999239996c.jpg?v=1588095499")

p5 = Product.create(brand: "Amore Pacific", name: "Time Response Skin Renewal Toner", skin_type: "Dry", step: "Toner", img_url: "https://cdn.shopify.com/s/files/1/0097/9340/4964/products/TIME_RESPONSE_Skin_Reserve_Toner.jpg?v=1571776368")
p6 = Product.create(brand: "Amore Pacific", name: "Treatment Toner", skin_type: "Oily", step: "Toner", img_url: "https://cdn.shopify.com/s/files/1/0097/9340/4964/products/treatment_toner.jpg?v=1571782803")
p7 = Product.create(brand: "belif", name: "Bergamot Herbal Extract Toner", skin_type: "Combination", step: "Toner", img_url: "https://cdn.shopify.com/s/files/1/0094/5691/0395/products/52100330_01_900x.jpg?v=1548101673")
p8 = Product.create(brand: "belif", name: "Eucalyptus Herbal Extract Toner", skin_type: "Normal", step: "Toner", img_url: "https://cdn.shopify.com/s/files/1/0094/5691/0395/products/52100329_01_900x.jpg?v=1548101679")

p9 = Product.create(brand: "Mario Badescu", name: "Vitamin C Serum", skin_type: "Normal", step: "Serum", img_url: "https://www.mariobadescu.com/content/images/thumbs/0085191_vitamin-c-serum.jpeg")
p10 = Product.create(brand: "Mario Badescu", name: "Hydro Moisturizer With Vitamin C", skin_type: "Dry", step: "Serum", img_url: "https://images.ulta.com/is/image/Ulta/2209853?$detail$")
p11 = Product.create(brand: "Ciracle", name: "Pore Control Tightening Serum", skin_type: "Oily", step: "Serum", img_url: "https://cdn.shopify.com/s/files/1/0721/0715/products/Ciracle-Pore-Control-Tightening-Serum-30ml-Title.jpeg?v=1571438921")
p12 = Product.create(brand: "La Mer", name: "The Regenerating Serum", skin_type: "Combination", step: "Serum", img_url: "https://m.cremedelamer.com/media/export/cms/products/680x680/LM_SKU_5R0P01_105462_680x680_0.png")

p13 = Product.create(brand: "Kiehl's", name: "Breakout Control Targeted Acne Spot Treatment", skin_type: "Normal", step: "Spot Treatment", img_url: "https://www.kiehls.com/on/demandware.static/-/Sites-kiehls-master-catalog/default/dw7a705210/nextgen/skin-care/acne-treatment/dermatologist-solutions/breakout-control-targeted-acne-spot-treatment/kiehls-acne-treatment-breakout-control-targeted-acne-spot-treatment-000-3605970988951-front.png")
p14 = Product.create(brand: "La Mer", name: "The Treatment Lotion", skin_type: "Dry", step: "Spot Treatment", img_url: "https://m.cremedelamer.com/media/export/cms/products/680x680/LM_SKU_51KA01_47744_680x680_0.png")
p15 = Product.create(brand: "Sunday Riley", name: "Good Genes All-In-One Lactic Acid Treatment", skin_type: "Oily", step: "Spot Treatment", img_url: "https://cdn.shopify.com/s/files/1/1681/2995/products/GGL-2000x2000-300dpi_2048x2048.jpg?v=1580777022")
p16 = Product.create(brand: "Kiehl's", name: "Blue Herbal Spot Treatment", skin_type: "Combination", step: "Spot Treatment", img_url: "https://www.kiehls.com/dw/image/v2/AANG_PRD/on/demandware.static/-/Sites-kiehls-master-catalog/default/dweec46da4/nextgen/skin-care/acne-treatment/blue-herbal/blue-herbal-spot-treatment/kiehls-acne-treatment-blue-herbal-spot-treatment-15ml-000-3605971302244-front.jpg?sw=465&sfrm=png&q=70")

p17 = Product.create(brand: "Kiehl's", name: "Ultra Facial Moisturizer", skin_type: "Normal", step: "Moisturizer", img_url: "https://images.ulta.com/is/image/Ulta/2536686?op_sharpen=1&resMode=bilin&qlt=85&wid=800&hei=800&fmt=jpg")
p18 = Product.create(brand: "belif", name: "The True Cream Moisturizing Bomb", skin_type: "Dry", step: "Moisturizer", img_url: "https://cdn.shopify.com/s/files/1/0094/5691/0395/products/MB_jumbo1_1200x.jpg?v=1578521981")
p19 = Product.create(brand: "Missha", name: "Super Aqua Cell Renew Snail Essential Moisturizer", skin_type: "Oily", step: "Moisturizer", img_url: "https://assets.feelunique.com/f_auto,t_product_main/v1/live/product/main-image/101470/xm9y1ooamzmjyh2zri6q.jpg")
p20 = Product.create(brand: "belif", name: "Creamy Deep Moist Moisturizer", skin_type: "Combination", step: "Moisturizer", img_url: "https://cdn.shopify.com/s/files/1/0094/5691/0395/products/52100334_01_900x.jpg?v=1548101678")

p21 = Product.create(brand: "Laneige", name: "Triple Sunscreen SPF 40", skin_type: "Normal", step: "SPF", img_url: "https://i5.walmartimages.com/asr/172f9c30-0dce-4b72-bffa-39dac73c8eb4_1.e982f01ef38f26c043d125a31be5b056.jpeg")
p22 = Product.create(brand: "COSRX", name: "Aloe Soothing Sun Cream SPF 50+ PA+++", skin_type: "Dry", step: "SPF", img_url: "https://www.cosrx.com/media/catalog/product/a/l/aloe-soothing-sun-cream_final_1.png")
p23 = Product.create(brand: "Dr. Jart", name: "Every Sun Day UV Sunscreen SPF 50", skin_type: "Oily", step: "SPF", img_url: "https://www.sephora.com/productimages/sku/s2344547-main-zoom.jpg")
p24 = Product.create(brand: "Banila Co", name: "It Radiant CC Cream SPF30 PA++,", skin_type: "Combination", step: "SPF", img_url: "https://k-skinmall.com/wp-content/uploads/2020/03/banila-co-It-Radiant-CC-SPF30-PA.jpg")

up1 = UserProduct.create(user_id: u1.id, product_id: p2.id)
up2 = UserProduct.create(user_id: u1.id, product_id: p6.id)
up3 = UserProduct.create(user_id: u1.id, product_id: p11.id)
up4 = UserProduct.create(user_id: u1.id, product_id: p19.id)
up5 = UserProduct.create(user_id: u1.id, product_id: p23.id)