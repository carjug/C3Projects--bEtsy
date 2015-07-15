# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

orders = [
  { email: "joe@mail.com", cc_name: "Joe Smoe", cc_number: "0000123456781234", 
    cc_cvv: 567, billing_zip: 98740, shipped: false, address1: "123 Main St", 
    address2: "apt #2", city: "Kent", state: "WA", mailing_zip: 98740 },
  { email: "holly@mail.com", cc_name: "Holly Golightly", cc_number: "0000123456788765", 
    cc_cvv: 341, billing_zip: 89754, shipped: true, address1: "123 Oak Lane", 
    address2: nil, city: "Lavender", state: "OR", mailing_zip: 89543 },
  { email: "eggplant@mail.com", cc_name: "Eggplant Kalamazoo", cc_number: "0000123456785678", 
    cc_cvv: 341, billing_zip: 12345, shipped: false, address1: "123 Armadillo Rd", 
    address2: nil, city: "Petunia", state: "ID", mailing_zip: 12345 }
]

orders.each do |order|
  Order.create(order)
end

users = [
  { user_name: "Sue Boo", email: "sue.boo@example.com" },
  { user_name: "Kate Plate", email: "kate.plate@example.com" }
]
users.each do |user|
  User.create(user)
end

products = [
  { name: "principal's email address", price: 1000, 
    description: "a verified principal's email address", category: "email", 
    active: true, photo_url: "dunecat.jpg", stock: 10 },
  { name: "CEO's password", price: 20000, 
    description: "password to CEO's OnePass account", category: "password", 
    active: true, photo_url: "dunecat.jpg", stock: 2 },
  { name: "MRA activist's Reddit password", price: 500, 
    description: "embarrass a jerk in his online community", category: "password", 
    active: true, photo_url: "dunecat.jpg", stock: 3 },
  { name: "celebrity address", price: 10000, 
    description: "all you need to stalk your fav", category: "address", 
    active: true, photo_url: "dunecat.jpg", stock: 10 },
]

products.each do |product|
  Product.create(product)
end

reviews = [
  { rating: 4, review_text: "great secret!", product_id: 1 },
  { rating: 3, review_text: "lousy secret", product_id: 2 },
  { rating: 1, review_text: "gross, i can't even", product_id: 3 },
  { rating: 5, review_text: "awesome, love hacking jerks", product_id: 3 },
  { rating: 2, review_text: "stalking is the best!", product_id: 4 },
]

reviews.each do |review|
  Review.create(review)
end

