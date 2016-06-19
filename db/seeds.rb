# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#user
User.create!(YAML::load(File.open("#{Rails.root}/db/seeds/user_seed.yml")))

#brand
Brand.create(name: "BB ROYAL")

#volume
Volume.create(number: 500, unit: "gram")

#category
c = Category.create(name: "Channa Dal", parent: Category.create(name: "Dals & Pulses", parent: Category.create(name: "Grocery & Staples")))


#product
c.products.create(name: 'Channa Dal', price: 55, brand_id: 1, volume_id: 1, delivery_period: 12)