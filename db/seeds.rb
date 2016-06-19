# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#user
User.create!(YAML::load(File.open("#{Rails.root}/db/seeds/user_seed.yml")))


#category
c = Category.create(name: "Rice", parent: Category.create(name: "Food"))