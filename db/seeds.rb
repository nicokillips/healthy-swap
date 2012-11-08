# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.find_or_create_by_name('Cocoa Krispies', calories: 200, saturated_fat: 20, sugar_type: 'Proccessed Sugar')
Product.find_or_create_by_name('Enviro Koala Kris', calories: 80, saturated_fat: 0, sugar_type: 'Organic Cane Sugar')