# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#   Product.create(:name => "seed-generated product", :description => "I also created this product without using the HTML form!", :image_url => "https://source.unsplash.com/355x250/?bike", :price => 200)

Comment.create!(user: User.first, product: Product.first, rating: 1, body: "bad")
Comment.create!(user: User.first, product: Product.first, rating: 4, body: "nice")
Comment.create!(user: User.first, product: Product.first, rating: 2, body: "meh")