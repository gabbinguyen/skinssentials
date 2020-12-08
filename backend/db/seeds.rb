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

# users 

u1 = User.create(name: 'Sara', username: 'sbastian', skin_type: 'Oily')
u2 = User.create(name: 'Sienna', username: 'smori', skin_type: 'Combination')
u3 = User.create(name: 'Rachel', username: 'rsmith', skin_type: 'Dry')


# cleansers 
    c1 = Product.create(brand: "COSRX", name: "Hyaluronic Acid Hydra Foam Cleanser", skin_type: "Dry", step: "Cleanser", img_url: "https://akamai.poxo.com/beautyboxkorea/beautyboxkorea.cafe24.com/web/product/big/CIRACLE-COSRX-Hyaluronic-Acid-Hydra-Foam-Cleanser-150ml.jpg")
    c2 = Product.create(brand: "COSRX", name: "Salicylic Acid Exfoliating Cleanser", skin_type: "Oily", step: "Cleanser", img_url: "https://www.cosrx.com/media/catalog/product/s/a/salicylic-acid-daily-gentle-cleanser_1.png?quality=90&fit=bounds&height=&width=&canvas=:")
    c3 = Product.create(brand: "innisfree", name: "Apple Juicy Liquid Foaming Cleanser", skin_type: "Normal", step: "Cleanser", img_url: "https://img.makeupalley.com/thumb/h/350/0_0_0_1_3660272.jpeg")
    c4 = Product.create(brand: "Laneige", name: "Multi Cleanser", skin_type: "Combination", step: "Cleanser", img_url: "https://cdn.shopify.com/s/files/1/0255/0189/2660/products/Multi-Deep-Clean_2000x2000_61cde8f1-5e9a-4ef7-8840-77999239996c.jpg?v=1588095499")

    c5 = Product.create(brand: "COSRX", name: "Low pH Good Morning Gel Cleanse", skin_type: "Normal", step: "Cleanser", img_url: "https://images.ulta.com/is/image/Ulta/2517358?op_sharpen=1&resMode=bilin&qlt=85&wid=800&hei=800&fmt=jpg")
    c6 = Product.create(brand: "Banila Co", name: "Clean It Zero - Foam Cleanser", skin_type: "Combination", step: "Cleanser", img_url: "https://images-na.ssl-images-amazon.com/images/I/51CNPNbzVGL._SL1000_.jpg")
    c7 = Product.create(brand: "Bioré", name: "Deep Pore Charcoal Cleanser", skin_type: "Oily", step: "Cleanser", img_url: "https://images-na.ssl-images-amazon.com/images/I/71FA-GH35pL._SL1500_.jpg")
    c8 = Product.create(brand: "ElishaCoy", name: "Vita Capsule Cleanser", skin_type: "Dry", step: "Cleanser", img_url: "https://images-na.ssl-images-amazon.com/images/I/51uDEDIfCNL._SL1024_.jpg")

    c9 = Product.create(brand: "Innisfree", name: "Apple Juicy Liquid Foaming Cleanser", skin_type: "Normal", step: "Cleanser", img_url: "https://img.makeupalley.com/thumb/h/350/0_0_0_1_3660272.jpeg")
    c10 = Product.create(brand: "Esfolio", name: "2 Step Multi Oil & Peeling Cleanser", skin_type: "Oily", step: "Cleanser", img_url: "https://cdn.shopify.com/s/files/1/1965/3387/products/DSC01638.jpg?v=1571289164")
    c11 = Product.create(brand: "Glossier", name: "Milky Jelly Cleanser", skin_type: "Combination", step: "Cleanser", img_url: "https://img.makeupalley.com/1/1/8/1/3115134.JPG")
    c12 = Product.create(brand: "innisfree", name: "Blueberry Rebalancing 5.5 Cleanser", skin_type: "Dry", step: "Cleanser", img_url: "https://i.ebayimg.com/images/g/NK0AAOSwYv9eRZ~R/s-l500.jpg")

    c13 = Product.create(brand: "Milk Makeup", name: "Matcha Cleanser", skin_type: "Normal", step: "Cleanser", img_url: "https://www.sephora.com/productimages/product/p452904-av-01-zoom.jpg")
    c14 = Product.create(brand: "CeraVe", name: "Hydrating Cleanser", skin_type: "Dry", step: "Cleanser", img_url: "https://target.scene7.com/is/image/Target/GUEST_e9864eb6-d8de-405e-8d8b-c7f7f903b212?wid=488&hei=488&fmt=pjpeg")
    c15 = Product.create(brand: "Mario Badescu", name: "Acne Facial Cleanser", skin_type: "Oily", step: "Cleanser", img_url: "https://images-na.ssl-images-amazon.com/images/I/71djZJZWujL._SX522_.jpg")
    c16 = Product.create(brand: "Drunk Elephant", name: "Beste™ No. 9 Jelly Cleanser", skin_type: "Combination", step: "Cleanser", img_url: "https://cdn.shopify.com/s/files/1/0209/8446/products/Beste_US_Standard_1024px_72dpi_DE_1024x1024_7d8f524d-cc4f-4fb2-9af4-7bf48398e08d.jpg?v=1601493050")

    c17 = Product.create(brand: "Sunday Riley", name: "Ceramic Slip Clay Cleanser", skin_type: "Oily", step: "Cleanser", img_url: "https://media.allure.com/photos/5ba942e25fd48d3656ef7bde/master/pass/sunday-riley-ceramic-slip-clay-cleanser.png")
    c18 = Product.create(brand: "Kiehl's", name: "Ultra Facial Cleanser", skin_type: "Normal", step: "Cleanser", img_url: "https://cdn.shopify.com/s/files/1/0283/0185/2747/products/variant_images-size-25oz-3605975099676-1_525x525.jpg?v=1596648700")
    c19 = Product.create(brand: "Kiehl's", name: "Rare Earth Deep Pore Daily Cleanser", skin_type: "Combination", step: "Cleanser", img_url: "https://www.kiehls.com/dw/image/v2/AANG_PRD/on/demandware.static/-/Sites-kiehls-master-catalog/default/dw33b73a10/nextgen/skin-care/face-cleansers/rare-earth/rare-earth-deep-pore-daily-cleanser/kiehls-face-cleanser-rare-earth-deep-pore-daily-cleanser-150ml-000-3605975038033-front.jpg?sw=465&sfrm=png&q=70")
    c20 = Product.create(brand: "Neutrogena", name: "Extra Gentle Cleanser", skin_type: "Dry", step: "Cleanser", img_url: "https://ntg-catalog.imgix.net/products/6887295_nocolor_0.jpg?w=1200&h=1443&sfrm=jpg&fit=crop")


# toners
    t1 = Product.create(brand: "Amore Pacific", name: "Time Response Skin Renewal Toner", skin_type: "Dry", step: "Toner", img_url: "https://cdn.shopify.com/s/files/1/0097/9340/4964/products/TIME_RESPONSE_Skin_Reserve_Toner.jpg?v=1571776368")
    t2 = Product.create(brand: "Amore Pacific", name: "Treatment Toner", skin_type: "Oily", step: "Toner", img_url: "https://cdn.shopify.com/s/files/1/0097/9340/4964/products/treatment_toner.jpg?v=1571782803")
    t3 = Product.create(brand: "belif", name: "Bergamot Herbal Extract Toner", skin_type: "Combination", step: "Toner", img_url: "https://cdn.shopify.com/s/files/1/0094/5691/0395/products/52100330_01_900x.jpg?v=1548101673")
    t4 = Product.create(brand: "belif", name: "Eucalyptus Herbal Extract Toner", skin_type: "Normal", step: "Toner", img_url: "https://cdn.shopify.com/s/files/1/0094/5691/0395/products/52100329_01_900x.jpg?v=1548101679")

    t5 = Product.create(brand: "COSRX", name: "TGalactomyces Alcohol-Free Toner", skin_type: "Dry", step: "Toner", img_url: "https://cdn.shopify.com/s/files/1/2491/3114/products/5_a2f48d5e-4eb8-4916-9db2-b25c6eeae47e_2048x.jpg?v=1587466982")
    t6 = Product.create(brand: "COSRX", name: "AHA/BHA Clarifying Treatment Toner", skin_type: "Oily", step: "Toner", img_url: "https://www.cosrx.com/media/catalog/product/a/h/aha-bha-clarifying-treatment-toner_final_1.png")
    t7 = Product.create(brand: "innisfree", name: "Jeju Volcanic Pore Toner", skin_type: "Combination", step: "Toner", img_url: "https://cdn.shopify.com/s/files/1/1833/5395/products/innisfree-jeju-volcanic-pore-toner-11731385712706.jpg?v=1566485497")
    t8 = Product.create(brand: "It's Skin", name: "Hyaluronic Acid Moisture Toner", skin_type: "Normal", step: "Toner", img_url: "https://itsskinusa.com/wp-content/uploads/2017/08/6018001724_1.jpg")

    t9 = Product.create(brand: "Mario Badescu", name: "Aloe Vera Toner", skin_type: "Dry", step: "Toner", img_url: "https://cdn.shopify.com/s/files/1/0283/0185/2747/products/global_images-785364200036-1_1024x.jpg?v=1595552980")
    t10 = Product.create(brand: "Mario Badescu", name: "Glycolic Acid Toner", skin_type: "Oily", step: "Toner", img_url: "https://m.media-amazon.com/images/I/71Wk+7jlyrL._SL1500_.jpg")
    t11 = Product.create(brand: "Sunday Riley", name: "Martian Mattifying Melting Water-Gel Toner", skin_type: "Combination", step: "Toner", img_url: "https://img.makeupalley.com/8/1/3/3/3545930.JPG")
    t12 = Product.create(brand: "Kiehl's", name: "Ultra Facial Toner", skin_type: "Normal", step: "Toner", img_url: "https://www.kiehls.com/dw/image/v2/AANG_PRD/on/demandware.static/-/Sites-kiehls-master-catalog/default/dw1a916070/nextgen/skin-care/face-toners/ultra-facial/ultra-facial-toner/kiehls-toner-ultra-facial-toner-250ml-000-3605970024574-front.jpg?sw=465&sfrm=png&q=70")

    t13 = Product.create(brand: "Dr.Jart+", name: "Ctrl-A Clarifying Toner", skin_type: "Dry", step: "Toner", img_url: "https://cdn.shopify.com/s/files/1/0037/5111/6870/products/57_2905116b-da41-4374-be60-82b0b853b512_1200x1200.jpg?v=1571712157")
    t14 = Product.create(brand: "Dr.Jart+", name: "V7 Radiance Toner", skin_type: "Oily", step: "Toner", img_url: "https://cdn.shopify.com/s/files/1/1437/4584/products/V7-Radiance-Toner_large_2x.jpg?v=1473787923")
    t15 = Product.create(brand: "Etude House", name: "AC Clinic Daily Toner", skin_type: "Combination", step: "Toner", img_url: "https://3.bp.blogspot.com/-n8Jdn9LgVr0/UZV0AYAUrxI/AAAAAAAAACU/k1J_lg1Nlmg/s1600/ac+clinic+toner.jpg")
    t16 = Product.create(brand: "innisfree", name: "Green Persimmon Pore Toner", skin_type: "Normal", step: "Toner", img_url: "https://i.pinimg.com/originals/f8/11/88/f81188506709e50d690113e1075dab4b.png")

    t17 = Product.create(brand: "Kiehl's", name: "Clearly Corrective™ Clarity-Activating Toner", skin_type: "Dry", step: "Toner", img_url: "https://lh3.googleusercontent.com/proxy/oZKPdBdvggCqMxwpC1r51TG9elMUPBlPnhR-i5vJNLT_1IVzR1BECzi_PknvFWjcat9rnMjT2GC_FT_mRQaF0Izgxrg")
    t18 = Product.create(brand: "Benton", name: "Aloe BHA Skin Toner", skin_type: "Oily", step: "Toner", img_url: "https://s1.thcdn.com/productimg/1600/1600/11401208-1234456615531728.jpg")
    t19 = Product.create(brand: "Kiehl's", name: "Ultra Facial Oil-Free Toner", skin_type: "Combination", step: "Toner", img_url: "https://www.kiehls.com/on/demandware.static/-/Sites-kiehls-master-catalog/default/dw14f46026/nextgen/skin-care/face-toners/ultra-facial/ultra-facial-oil-free-toner/kiehls-toner-ultra-facial-oil-free-toner-000-3605975080872-front.png")
    t20 = Product.create(brand: "La Mer", name: "The Tonic", skin_type: "Normal", step: "Toner", img_url: "https://www.sephora.com/productimages/sku/s1932383-main-zoom.jpg")


# serums
    s1 = Product.create(brand: "Mario Badescu", name: "Vitamin C Serum", skin_type: "Normal", step: "Serum", img_url: "https://slimages.macys.com/is/image/MCY/products/2/optimized/9327112_fpx.tif?$filterlrg$&wid=327")
    s2 = Product.create(brand: "Mario Badescu", name: "Hydro Moisturizer With Vitamin C", skin_type: "Dry", step: "Serum", img_url: "https://images.ulta.com/is/image/Ulta/2209853?$detail$")
    s3 = Product.create(brand: "Ciracle", name: "Pore Control Tightening Serum", skin_type: "Oily", step: "Serum", img_url: "https://cdn.shopify.com/s/files/1/0721/0715/products/Ciracle-Pore-Control-Tightening-Serum-30ml-Title.jpeg?v=1571438921")
    s4 = Product.create(brand: "La Mer", name: "The Regenerating Serum", skin_type: "Combination", step: "Serum", img_url: "https://m.cremedelamer.com/media/export/cms/products/680x680/LM_SKU_5R0P01_105462_680x680_0.png")

    s5 = Product.create(brand: "Glossier", name: "Super Bounce", skin_type: "Normal", step: "Serum", img_url: "https://images-na.ssl-images-amazon.com/images/I/61BR3zkIOxL._SL1500_.jpg")
    s6 = Product.create(brand: "The INKEY List", name: "Niacinamide Oil Control Serum", skin_type: "Oily", step: "Serum", img_url: "https://cdn.cultbeauty.com/slots-img/inkink021_theinkeylist_niacinamide_1560x1960-kwa1zjpg")
    s7 = Product.create(brand: "Drunk Elephant", name: "B-Hydra™ Intensive Hydration Serum", skin_type: "Dry", step: "Serum", img_url: "https://m.media-amazon.com/images/I/416BCc8gqwL._SL1000_.jpg")
    s8 = Product.create(brand: "LANEIGE", name: "Glowy Makeup Serum", skin_type: "Combination", step: "Serum", img_url: "https://www.sephora.com/productimages/sku/s2352441-main-zoom.jpg?imwidth=300")

    s9  = Product.create(brand: "Dr. Jart+", name: "Cicapair™ Tiger Grass Serum", skin_type: "Normal", step: "Serum", img_url: "https://www.sephora.com/productimages/sku/s2267805-main-zoom.jpg")
    s10 = Product.create(brand: "Caudalie", name: "Vinosource SOS Deep Hydration Serum", skin_type: "Dry", step: "Serum", img_url: "https://images-na.ssl-images-amazon.com/images/I/61Hm1eVNUcL._SL1500_.jpg")
    s11 = Product.create(brand: "The Ordinary", name: "Azelaic Acid Suspension 10%", skin_type: "Oily", step: "Serum", img_url: "https://www.sephora.com/productimages/sku/s2031458-main-zoom.jpg")
    s12 = Product.create(brand: "First Aid Beauty", name: "Ultra Repair® Hydrating Serum", skin_type: "Combination", step: "Serum", img_url: "https://images.ulta.com/is/image/Ulta/2542832?op_sharpen=1&resMode=bilin&qlt=85&wid=800&hei=800&fmt=jpg")

    s13 = Product.create(brand: "Mario Badescu", name: "Facial Spray With Aloe Herb and Rosewater", skin_type: "Normal", step: "Serum", img_url: "https://www.sephora.com/productimages/sku/s2192060-main-zoom.jpg")
    s14 = Product.create(brand: "Glossier", name: "Soothing Face Mist", skin_type: "Dry", step: "Serum", img_url: "https://i.pinimg.com/originals/99/4d/7f/994d7f7784da8e1a7110376f489be7ef.png")
    s15 = Product.create(brand: "innisfree", name: "Canola Honey Jelly Mist", skin_type: "Oily", step: "Serum", img_url: "https://cdn11.bigcommerce.com/s-7xqzsseu2w/images/stencil/1280x1280/products/1710/4741/10465_l__23841.1511567119.png?c=2?imbypass=on")
    s16 = Product.create(brand: "MISSHA", name: "Time Revolution The First Treatment Essence", skin_type: "Combination", step: "Serum", img_url: "https://d1flfk77wl2xk4.cloudfront.net/Assets/GalleryImage/85/828/L_g0110982885.jpg")

    s17 = Product.create(brand: "COSRX", name: "Advanced Snail 96 Mucin Power Essence", skin_type: "Normal", step: "Serum", img_url: "https://www.cosrx.com/media/catalog/product/a/d/advanced-snail-96-mucin-power-essence.png?quality=90&fit=bounds&height=&width=&canvas=:")
    s18 = Product.create(brand: "Amorepacific", name: "The Essential Creme Fluid", skin_type: "Dry", step: "Serum", img_url: "https://s1.thcdn.com/productimg/1600/1600/11841674-7064610830750194.jpg")
    s19 = Product.create(brand: "La Mer", name: "The Concentrate", skin_type: "Oily", step: "Serum", img_url: "https://m.cremedelamer.com/media/export/cms/products/680x680/LM_SKU_432A01_119970_680x680_0.png")
    s20 = Product.create(brand: "Etude House", name: "AC Clinic Intense Hinoki Water Mist", skin_type: "Combination", step: "Serum", img_url: "https://images-na.ssl-images-amazon.com/images/I/418yKLjpZXL.jpg")


# spot treatment

    st1	 = 	Product.create(brand: "Kiehl's", name: "Breakout Control Targeted Acne Spot Treatment", skin_type: "Normal", step: "Spot Treatment", img_url: "https://www.kiehls.com/on/demandware.static/-/Sites-kiehls-master-catalog/default/dw7a705210/nextgen/skin-care/acne-treatment/dermatologist-solutions/breakout-control-targeted-acne-spot-treatment/kiehls-acne-treatment-breakout-control-targeted-acne-spot-treatment-000-3605970988951-front.png")
    st2	 = 	Product.create(brand: "La Mer", name: "The Treatment Lotion", skin_type: "Dry", step: "Spot Treatment", img_url: "https://m.cremedelamer.com/media/export/cms/products/680x680/LM_SKU_51KA01_47744_680x680_0.png")
    st3	 = 	Product.create(brand: "Sunday Riley", name: "Good Genes All-In-One Lactic Acid Treatment", skin_type: "Oily", step: "Spot Treatment", img_url: "https://cdn.shopify.com/s/files/1/1681/2995/products/GGL-2000x2000-300dpi_2048x2048.jpg?v=1580777022")
    st4	 = 	Product.create(brand: "Kiehl's", name: "Blue Herbal Spot Treatment", skin_type: "Combination", step: "Spot Treatment", img_url: "https://www.kiehls.com/dw/image/v2/AANG_PRD/on/demandware.static/-/Sites-kiehls-master-catalog/default/dweec46da4/nextgen/skin-care/acne-treatment/blue-herbal/blue-herbal-spot-treatment/kiehls-acne-treatment-blue-herbal-spot-treatment-15ml-000-3605971302244-front.jpg?sw=465&sfrm=png&q=70")

    st5	 = 	Product.create(brand: "Kiehl's", name: "Clearly Corrective™ Dark Spot Solution", skin_type: "Normal", step: "Spot Treatment", img_url: "https://www.sephora.com/productimages/sku/s1989482-main-zoom.jpg")
    st6	 = 	Product.create(brand: "La Mer", name: "The Perfecting Treatment", skin_type: "Dry", step: "Spot Treatment", img_url: "https://m.cremedelamer.com/media/export/cms/products/680x680/LM_SKU_591N01_68370_680x680_0.png")
    st7	 = 	Product.create(brand: "Sunday Riley", name: "Saturn Sulfur Acne Treatment", skin_type: "Oily", step: "Spot Treatment", img_url: "https://slimages.macys.com/is/image/MCY/products/5/optimized/9243665_fpx.tif?op_sharpen=1&wid=500&hei=613&fit=fit,1&$filtersm$")
    st8	 = 	Product.create(brand: "Ciracle's", name: "Red Spot Cream", skin_type: "Combination", step: "Spot Treatment", img_url: "https://image.pushauction.com/0/0/048957e3-2847-47ed-8ae8-3057ef989528/07d45758-3bd0-4da9-9c60-a568829d29ca.JPG")

    st9	 = 	Product.create(brand: "Dr.Jart+", name: "Ctrl-A Drying Spot Corrector", skin_type: "Normal", step: "Spot Treatment", img_url: "https://s2j9m2j9.stackpathcdn.com/images/dr-jart-ctrl-a-drying-spot-corrector-36670.jpg")
    st10 = 	Product.create(brand: "Dr.Jart+", name: "V7 Spot Eraser", skin_type: "Dry", step: "Spot Treatment", img_url: "https://www.hikoreanfashion.com/95534-thickbox_default/dr-jart-v7-spot-eraser.jpg")
    st11 = 	Product.create(brand: "Holika Holika", name: "Don't Worry Bee Care Spot Serum", skin_type: "Oily", step: "Spot Treatment", img_url: "https://i.pinimg.com/originals/80/70/07/807007275f13fbe5327a81c776cac6b8.jpg")
    st12 = 	Product.create(brand: "Mizon", name: "Acence Blemish Spot Solution Serum", skin_type: "Combination", step: "Spot Treatment", img_url: "https://healthyskin.eu/pub/media/catalog/product/cache/599d0cbc3597331f0c6e3e9c56da1002/m/i/mizon-acence-blemish-spot-solution-serum.png")

    st13 = 	Product.create(brand: "Kate Somerville", name: "EradiKate™ Acne Treatment", skin_type: "Normal", step: "Spot Treatment", img_url: "https://images.ulta.com/is/image/Ulta/2531113?op_sharpen=1&resMode=bilin&qlt=85&wid=800&hei=800&fmt=jpg")
    st14 = 	Product.create(brand: "Origins", name: "Super Spot Remover Acne Treatment Gel", skin_type: "Dry", step: "Spot Treatment", img_url: "https://images.ulta.com/is/image/Ulta/2307178?op_sharpen=1&resMode=bilin&qlt=85&wid=800&hei=800&fmt=jpg")
    st15 = 	Product.create(brand: "The Ordinary", name: "Salicylic Acid 2% Masque", skin_type: "Oily", step: "Spot Treatment", img_url: "https://images-na.ssl-images-amazon.com/images/I/513M7SsVHbL._SL1195_.jpg")
    st16 = 	Product.create(brand: "Murad", name: "InvisiScar Resurfacing Treatment", skin_type: "Combination", step: "Spot Treatment", img_url: "https://www.sephora.com/productimages/sku/s2255289-main-zoom.jpg")

    # st17 = 	Product.create(brand: "Kiehl's", name: "Breakout Control Targeted Acne Spot Treatment", skin_type: "Normal", step: "Spot Treatment", img_url: "https://www.kiehls.com/on/demandware.static/-/Sites-kiehls-master-catalog/default/dw7a705210/nextgen/skin-care/acne-treatment/dermatologist-solutions/breakout-control-targeted-acne-spot-treatment/kiehls-acne-treatment-breakout-control-targeted-acne-spot-treatment-000-3605970988951-front.png")
    # st18 = 	Product.create(brand: "La Mer", name: "The Treatment Lotion", skin_type: "Dry", step: "Spot Treatment", img_url: "https://m.cremedelamer.com/media/export/cms/products/680x680/LM_SKU_51KA01_47744_680x680_0.png")
    # st19 = 	Product.create(brand: "Sunday Riley", name: "Good Genes All-In-One Lactic Acid Treatment", skin_type: "Oily", step: "Spot Treatment", img_url: "https://cdn.shopify.com/s/files/1/1681/2995/products/GGL-2000x2000-300dpi_2048x2048.jpg?v=1580777022")
    # st20 = 	Product.create(brand: "Kiehl's", name: "Blue Herbal Spot Treatment", skin_type: "Combination", step: "Spot Treatment", img_url: "https://www.kiehls.com/dw/image/v2/AANG_PRD/on/demandware.static/-/Sites-kiehls-master-catalog/default/dweec46da4/nextgen/skin-care/acne-treatment/blue-herbal/blue-herbal-spot-treatment/kiehls-acne-treatment-blue-herbal-spot-treatment-15ml-000-3605971302244-front.jpg?sw=465&sfrm=png&q=70")


# moisturizer
    m1	 = 	Product.create(brand: "Kiehl's", name: "Ultra Facial Moisturizer", skin_type: "Normal", step: "Moisturizer", img_url: "https://images.ulta.com/is/image/Ulta/2536686?op_sharpen=1&resMode=bilin&qlt=85&wid=800&hei=800&fmt=jpg")
    m2	 = 	Product.create(brand: "belif", name: "The True Cream Moisturizing Bomb", skin_type: "Dry", step: "Moisturizer", img_url: "https://cdn.shopify.com/s/files/1/0094/5691/0395/products/MB_jumbo1_1200x.jpg?v=1578521981")
    m3	 = 	Product.create(brand: "Missha", name: "Super Aqua Cell Renew Snail Essential Moisturizer", skin_type: "Oily", step: "Moisturizer", img_url: "https://assets.feelunique.com/f_auto,t_product_main/v1/live/product/main-image/101470/xm9y1ooamzmjyh2zri6q.jpg")
    m4	 = 	Product.create(brand: "belif", name: "Creamy Deep Moist Moisturizer", skin_type: "Combination", step: "Moisturizer", img_url: "https://cdn.shopify.com/s/files/1/0094/5691/0395/products/52100334_01_900x.jpg?v=1548101678")

    m5	 = 	Product.create(brand: "Laneige", name: "Water Bank Moisture Cream", skin_type: "Normal", step: "Moisturizer", img_url: "https://www.sephora.com/productimages/sku/s2258770-main-zoom.jpg")
    m6	 = 	Product.create(brand: "Dr. Jart+", name: "Ctrl-A Soothing Moisturizer", skin_type: "Dry", step: "Moisturizer", img_url: "https://cdn.shopify.com/s/files/1/1437/4584/products/Ctrl-A-Soothing-Moisturizer_large_2x.jpg?v=1472777019")
    m7	 = 	Product.create(brand: "AmorePacific", name: "Moisture Bond Tinted Treatment Moisturizer SPF 15", skin_type: "Oily", step: "Moisturizer", img_url: "https://images.bloomingdalesassets.com/is/image/BLM/products/4/optimized/8777184_fpx.tif?op_sharpen=1&wid=350&fit=fit,1&$filtersm$")
    m8	 = 	Product.create(brand: "belif", name: "Milky Hydra Balancing Moisturizer", skin_type: "Combination", step: "Moisturizer", img_url: "https://cdn.shopify.com/s/files/1/0094/5691/0395/products/52100333_01_900x.jpg?v=1548101684")

    m9	 = 	Product.create(brand: "Lioele", name: "Super Moisture Hyaluronic Acid Dr. Ampoule", skin_type: "Normal", step: "Moisturizer", img_url: "https://lienn.ru/i/lioele/super-moisture-hyaluronic-acid-dr-ampoule-2340.jpg")
    m10	 = 	Product.create(brand: "Secret Key", name: "Deep Moisture Energy Facial Oil", skin_type: "Dry", step: "Moisturizer", img_url: "https://images-na.ssl-images-amazon.com/images/I/310Tb9vywAL.jpg")
    m11	 = 	Product.create(brand: "belif", name: "Oil Control Fresh Moisturize", skin_type: "Oily", step: "Moisturizer", img_url: "https://cdn11.bigcommerce.com/s-46kq7/images/stencil/1280x1280/products/1183/2359/ACM04565_E53_l__89064.1446012433.jpg?c=2?imbypass=on")
    m12	 = 	Product.create(brand: "SK-II", name: "Skin Signature Melting Rich Crea", skin_type: "Combination", step: "Moisturizer", img_url: "https://japanstore.pl/7362-thickbox_default/sk-ii-skin-signature-melting-rich-cream.jpg")

    m13	 = 	Product.create(brand: "Tatcha", name: "Supple Moisture Rich Silk Cream", skin_type: "Normal", step: "Moisturizer", img_url: "https://www.tatcha.com/dw/image/v2/BCFF_PRD/on/demandware.static/-/Sites-master_catalog_tatcha/default/dw7c6298ab/hi-res/SILK-CREAM-V2/moisture-rich-silk-cream.jpg?sw=750&sh=750")
    m14	 = 	Product.create(brand: "Tony Moly", name: "TI'm Real Seaweed Aqua Moisture Lotion", skin_type: "Dry", step: "Moisturizer", img_url: "https://cdn10.bigcommerce.com/s-rn1oiha/products/614/images/1631/_57_2__42328.1428077679.1280.1280.JPG?c=2")
    m15	 = 	Product.create(brand: "COSRX", name: "Oil-Free Ultra-Moisturizing Lotion with Birch Sap", skin_type: "Oily", step: "Moisturizer", img_url: "https://images-na.ssl-images-amazon.com/images/I/61pDzEw-opL._SX569_.jpg")
    m16	 = 	Product.create(brand: "COSRX", name: "Aloe Vera Oil-free Moisture Cream", skin_type: "Combination", step: "Moisturizer", img_url: "https://www.cosrx.com/media/catalog/product/a/l/aloe-vera-oil-free-moisture-cream_2.png?quality=70&fit=bounds&height=&width=&canvas=:")

    m17	 = 	Product.create(brand: "Etude House", name: "Moistfull Collagen Cream", skin_type: "Normal", step: "Moisturizer", img_url: "https://www.etude.com/int/en/media/catalog/product/cache/07b96aa9f5b70f577958b488444f8dd2/_/7/_75ml.jpg")
    m18	 = 	Product.create(brand: "Glossier", name: "Priming Moisturizer Rich", skin_type: "Dry", step: "Moisturizer", img_url: "https://img.makeupalley.com/thumb/h/350/1_1_8_1_3597936.jpg")
    m19	 = 	Product.create(brand: "Missha", name: "Super Aqua Cell Renew Snail Essential Moisturizer", skin_type: "Oily", step: "Moisturizer", img_url: "https://assets.feelunique.com/f_auto,t_product_main/v1/live/product/main-image/101470/xm9y1ooamzmjyh2zri6q.jpg")
    m20	 = 	Product.create(brand: "Mario Badescu", name: "Oil Free Moisturizer SPF 30", skin_type: "Combination", step: "Moisturizer", img_url: "https://images.ulta.com/is/image/Ulta/2220943?op_sharpen=1&resMode=bilin&qlt=85&wid=800&hei=800&fmt=jpg")

# SPF
    spf1 = 	Product.create(brand: "Laneige", name: "Triple Sunscreen SPF 40", skin_type: "Normal", step: "SPF", img_url: "https://i5.walmartimages.com/asr/172f9c30-0dce-4b72-bffa-39dac73c8eb4_1.e982f01ef38f26c043d125a31be5b056.jpeg")
    spf2 = 	Product.create(brand: "COSRX", name: "Aloe Soothing Sun Cream SPF 50+ PA+++", skin_type: "Dry", step: "SPF", img_url: "https://www.cosrx.com/media/catalog/product/a/l/aloe-soothing-sun-cream_final_1.png")
    spf3 = 	Product.create(brand: "Dr. Jart", name: "Every Sun Day UV Sunscreen SPF 50", skin_type: "Oily", step: "SPF", img_url: "https://www.sephora.com/productimages/sku/s2344547-main-zoom.jpg")
    spf4 = 	Product.create(brand: "Banila Co", name: "It Radiant CC Cream SPF30 PA++", skin_type: "Combination", step: "SPF", img_url: "https://k-skinmall.com/wp-content/uploads/2020/03/banila-co-It-Radiant-CC-SPF30-PA.jpg")

    spf5 = 	Product.create(brand: "AmorePacific", name: "Natural Protector SPF 30", skin_type: "Normal", step: "SPF", img_url: "https://n.io.nordstrommedia.com/id/sr3/7930e540-88fe-42de-84c9-adef4ea574bf.jpeg?crop=pad&pad_color=FFF&format=jpeg&w=780&h=1196")
    spf6 = 	Product.create(brand: "Dr. Jart+", name: "Sensitive Sun Protector SPF35 PA++", skin_type: "Dry", step: "SPF", img_url: "https://i.ebayimg.com/images/g/HpIAAOSwm-FcAMGE/s-l400.jpg")
    spf7 = 	Product.create(brand: "Amore Pacific", name: "Resort Collection Sun Protection Stick SPF 50+", skin_type: "Oily", step: "SPF", img_url: "https://images.neimanmarcus.com/ca/1/product_assets/C/1/V/G/Q/NMC1VGQ_mz.jpg")
    spf8 = 	Product.create(brand: "Bioderma", name: "Photoderm Anti-Age SPF 30", skin_type: "Combination", step: "SPF", img_url: "https://shop.shajgoj.com/wp-content/uploads/2018/06/bioderma-photoderm-spot.jpg")

    spf9 = 	Product.create(brand: "Etude House", name: "Sunprise Mild Airy Finish SPF 50+ PA+++", skin_type: "Normal", step: "SPF", img_url: "https://i.ebayimg.com/images/g/tz4AAOSwsJFc27Gz/s-l400.jpg")
    spf10 = Product.create(brand: "Hera", name: "Sun Mate Leports SPF 50 PA++++", skin_type: "Dry", step: "SPF", img_url: "https://cdn11.bigcommerce.com/s-46kq7/images/stencil/1280x1280/products/192/3651/82094610_M_500__33357.1573383925.jpg?c=2?imbypass=on")
    spf11 = Product.create(brand: "La Mer", name: "The Broad Spectrum SPF 50 UV Protecting Fluid", skin_type: "Oily", step: "SPF", img_url: "https://m.cremedelamer.com/media/export/cms/products/680x680/LM_SKU_54J201_53858_680x680_0.png")
    spf12 = Product.create(brand: "innisfree", name: "Eco Safety Perfect Sunblock SPF 50+ PA+++", skin_type: "Combination", step: "SPF", img_url: "https://niniko.us/assets/static/innisfree-eco-safety-perfect-sunblock.jpg")

    spf13 = Product.create(brand: "Drunk Elephant", name: "Umbra™ Sheer Physical Daily Defense Broad Spectrum Sunscreen SPF 30", skin_type: "Normal", step: "SPF", img_url: "https://m.media-amazon.com/images/I/51ZhXk7+eTL._SL1080_.jpg")
    spf14 = Product.create(brand: "Tatcha", name: "Silken Pore Perfecting Sunscreen Broad Spectrum SPF 35 PA+++", skin_type: "Dry", step: "SPF", img_url: "https://www.tatcha.com/on/demandware.static/-/Sites-master_catalog_tatcha/default/dwd9cc5cde/images/large/SPF_FS_PPage.jpg")
    spf15 =	Product.create(brand: "COOLA", name: "Full Spectrum 360° Sun Silk Drops Organic Sunscreen SPF 30", skin_type: "Oily", step: "SPF", img_url: "https://n.nordstrommedia.com/id/sr3/517994cc-ad5f-4347-a179-ee75fff44b49.jpeg?crop=pad&pad_color=FFF&format=jpeg&w=780&h=1196")
    spf16 =	Product.create(brand: "Dermalogica", name: "Invisible Physical Defense Sunscreen SPF 30", skin_type: "Combination", step: "SPF", img_url: "https://www.sephora.com/productimages/sku/s2322717-main-zoom.jpg")

    spf17 =	Product.create(brand: "Supergoop!", name: "Unseen Sunscreen SPF 40", skin_type: "Normal", step: "SPF", img_url: "https://images-na.ssl-images-amazon.com/images/I/61hNx-vNswL._SL1500_.jpg")
    spf18 =	Product.create(brand: "Clinique", name: "Broad Spectrum SPF 50 Sunscreen Face Cream", skin_type: "Dry", step: "SPF", img_url: "https://www.sephora.com/productimages/sku/s1151711-main-zoom.jpg")
    spf19 =	Product.create(brand: "Shiseido", name: "Ultimate Sun Protector Lotion SPF 50+ Sunscreen", skin_type: "Oily", step: "SPF", img_url: "https://shiseido.ipscdn.net/sa1/on/demandware.static/-/Sites-itemmaster_shiseido/default/dwf6e760f1/images/hi-res/9990000000200_main.jpg")
    spf20 =	Product.create(brand: "First Aid Beauty", name: "Weightless Liquid Mineral SPF 30", skin_type: "Combination", step: "SPF", img_url: "https://images.ulta.com/is/image/Ulta/2559076?op_sharpen=1&resMode=bilin&qlt=85&wid=800&hei=800&fmt=jpg")

# user_product associations
up1 = UserProduct.create(user_id: u1.id, product_id: c1.id)
up2 = UserProduct.create(user_id: u1.id, product_id: t6.id)
up3 = UserProduct.create(user_id: u1.id, product_id: s11.id)
up4 = UserProduct.create(user_id: u1.id, product_id: m19.id)
up5 = UserProduct.create(user_id: u1.id, product_id: spf19.id)