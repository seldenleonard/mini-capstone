# Supplier.create!([
#   {name: "Luxury FabricsWorldwide", email: "luxury@fabrics.com", phone_number: "2324445656"},
#   {name: "DeBeers Diamonds", email: "debeers@debeers.com", phone_number: "2873455556"},
#   {name: "The Finest Things", email: "finethings@things.com", phone_number: "7836549276"}
# ])

# Product.create!([
#   {name: "Silk Kimono", price: "1200.0", description: "For lounging in the finest Egyptian silk", inventory: 8, supplier_id: 1},
#   {name: "Tuxedo", price: "2000.0", description: "Black tie good", inventory: 3, supplier_id: 1},
#   {name: "Cashmere Socks", price: "95.0", description: "Because your feet need cashmere too", inventory: 5, supplier_id: 1},
#   {name: "Diamond Cufflinks", price: "8000.0", description: "So you can flex on everyone", inventory: 12, supplier_id: 2},
#   {name: "Emerald Toe Ring", price: "14800.0", description: "Do not combine with cashmere socks", inventory: 15, supplier_id: 2},
#   {name: "Lizard Belt", price: "215.0", description: "Made from genuine lizard leather", inventory: 8, supplier_id: 3},
#   {name: "Antique Gold Monocle", price: "17000.0", description: "A necessity for anyone who loves to see things using the best of 14th century technology.", inventory: 30, supplier_id: 3},
#   {name: "Ivory Pocketwatch", price: "6000.0", description: "From when ivory was legal", inventory: 1, supplier_id: 3},
#   {name: "Crocodile 3-Piece Suit", price: "15500.0", description: "Because why not", inventory: 12, supplier_id: 3},
#   {name: "Grillz", price: "20000.0", description: "For staying clean", inventory: 12, supplier_id: 2}
# ])
# User.create!([
#   {name: "Harry", email: "harry@gmail.com", password_digest: "$2a$12$ty/hUCX7kh1/EZLDkbRDa.3ESNNImZd.1LBRi3UGL1MvHEsca4HBq", admin: true},
#   {name: "Will", email: "will@gmail.com", password_digest: "$2a$12$ankmbFzYsOK1ercp2fsQJ.BgtXQf8zMbYtfkobgQ79z0CmqzgBtOi", admin: false}
# ])

Image.create!([
  {url: "https://cdn3.volusion.com/gkczq.onkqf/v/vspfiles/photos/213-10w325G-2.jpg?v-cache=1575918490", product_id: 1},
  {url: "https://www.prices4antiques.com/item_images/medium/64/75/65-01.jpg", product_id: 12},
  {url: "https://cdn3.volusion.com/gkczq.onkqf/v/vspfiles/photos/213-10w326-2.jpg?v-cache=1575918490", product_id: 1},
  {url: "https://www.etro.com/on/demandware.static/-/Sites-etro_master/default/dw3b9ad4f7/images/products/view_type_prod/201K4905479070650_SF_01.jpg", product_id: 2},
  {url: "https://www.sulis.co.uk/silk/mk2000oy.jpg", product_id: 2},
  {url: "https://images.neimanmarcus.com/ca/1/product_assets/N/6/H/8/X/NMN6H8X_mu.jpg", product_id: 3},
  {url: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQMgiyBkN6_WyG7_8-5-_SejtvJi71ebssYyQ&usqp=CAU", product_id: 3},
  {url: "https://cdn.incollect.com/sites/default/files/zoom/-Cartier-1920s-Moonstone-and-Diamond-Cufflinks-340161-1221844.jpg", product_id: 4},
  {url: "https://www.christies.com/img/LotImages/2018/CKS/2018_CKS_15493_0210_000(fine_diamond_cufflinks_cartier042230).jpg", product_id: 4},
  {url: "https://cdn.shopify.com/s/files/1/1409/2680/products/largecuadrado-cufflinks-blackdiamonds01_grande.jpg?v=1593293951", product_id: 4},
  {url: "https://i.etsystatic.com/6983147/r/il/c14aae/1506480523/il_570xN.1506480523_50ut.jpg", product_id: 8},
  {url: "https://cdn.shopify.com/s/files/1/1197/4862/products/IMG_6889_grande.JPG?v=1491345047", product_id: 8},
  {url: "https://i.etsystatic.com/5363840/c/1520/1208/285/1572/il/e90160/2381614816/il_340x270.2381614816_cwej.jpg", product_id: 9},
  {url: "https://images-na.ssl-images-amazon.com/images/G/01/digital/video/hero/Movies/2001/B000YJ4C9M_RushHour2_UXWB1._V142727193_SX1080_.jpg", product_id: 6},
  {url: "https://www.proparchives.com/wp-content/uploads/2018/12/1497.jpg", product_id: 6},
  {url: "https://ae01.alicdn.com/kf/H42d54e683bf64e4da22df94896aa0389B/Fashion-Thickening-Women-Cashmere-Socks-Lovely-Plush-Keep-Warm-Sleep-Home-Floor-Ladies-Funny-Socks-Coral.jpg", product_id: 5},
  {url: "https://www.dhresource.com/0x0/f2/albu/g8/M00/CE/0D/rBVaV1xFk2WALEs_AAMGS6A8M8A592.jpg/women-cozy-cashmere-socks-winter-warm-sleep.jpg", product_id: 5},
  {url: "https://media.tenor.com/images/52c040b20170bccbeed925c4d5162289/raw", product_id: 10},
  {url: "https://www.tvjohnny.net/images/pullout-category[1].jpg", product_id: 10}
])
Category.create!([
  {name: "Luxury"},
  {name: "Leather"},
  {name: "Absurd"}
])

Order.create!([
  {user_id: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, subtotal: "3600.0", tax: "324.0", total: "3924.0"},
  {user_id: 1, subtotal: "1200.0", tax: "108.0", total: "1308.0"},
  {user_id: 1, subtotal: "1200.0", tax: "108.0", total: "1308.0"},
  {user_id: 3, subtotal: nil, tax: nil, total: nil},
  {user_id: 2, subtotal: nil, tax: nil, total: nil}
])

CartedProduct.create!([
  {user_id: 2, product_id: 12, quantity: 1, status: "carted", order_id: nil},
  {user_id: 1, product_id: 9, quantity: 2, status: "carted", order_id: nil},
  {user_id: 1, product_id: 7, quantity: 8, status: "carted", order_id: nil},
  {user_id: 2, product_id: 8, quantity: 5, status: "carted", order_id: nil},
  {user_id: 2, product_id: 4, quantity: 4, status: "carted", order_id: nil},
  {user_id: 1, product_id: 5, quantity: 4, status: "carted", order_id: nil},
  {user_id: 1, product_id: 5, quantity: 2, status: "removed", order_id: nil}
])



ProductCategory.create!([
  {product_id: 1, category_id: 1},
  {product_id: 1, category_id: 2},
  {product_id: 2, category_id: 2},
  {product_id: 2, category_id: 3},
  {product_id: 3, category_id: 1},
  {product_id: 4, category_id: 1},
  {product_id: 5, category_id: 1},
  {product_id: 5, category_id: 3},
  {product_id: 6, category_id: 3},
  {product_id: 8, category_id: 1},
  {product_id: 8, category_id: 3},
  {product_id: 6, category_id: 1},
  {product_id: 9, category_id: 1},
  {product_id: 9, category_id: 3},
  {product_id: 12, category_id: 3},
  {product_id: 12, category_id: 1},
  {product_id: 13, category_id: 1},
  {product_id: 13, category_id: 3}
])
