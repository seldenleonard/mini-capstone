# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Product.create(name: "Lizard Belt", price: 215, description: "Made from genuine lizard leather")

# Product.create(name: "Silk Kimono", price: 1200, description: "For lounging in the finest Egyptian silk")

# Product.create(name: "Tuxedo", price: 2000, description: "Black tie")

# Product.create(name: "Diamond Cufflinks", price: 8000, description: "So you can flex on everyone")

# Product.create(name: "Cashmere Socks", price: 95, description: "Because your feet need cashmere too")

# Product.create(name: "Crocodile 3-Piece Suit", price: 7500, description: "Because why not")

CartedProduct.create(user_id: 2, product_id: 12, quantity: 1, status: "carted")

CartedProduct.create(user_id: 1, product_id: 9, quantity: 2, status: "carted")

CartedProduct.create(user_id: 1, product_id: 7, quantity: 8, status: "carted")

CartedProduct.create(user_id: 2, product_id: 8, quantity: 5, status: "carted")

CartedProduct.create(user_id: 2, product_id: 4, quantity: 4, status: "carted")