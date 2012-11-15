# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
product1 = Product.find_or_create_by_name('Cocoa Krispies', calories: 200, saturated_fat: 20, sugar_type: 'Proccessed Sugar')
product2 = Product.find_or_create_by_name('Enviro Koala Kris', calories: 80, saturated_fat: 0, sugar_type: 'Organic Cane Sugar')
ProductSwap.find_or_create_by_product1_id_and_product2_id(product1.id, product2.id, reason: 'Type of Sugar')
product3 = Product.find_or_create_by_name('Fruity Pebbles', calories: 200, saturated_fat: 20, sugar_type: 'Proccessed Sugar')
product4 = Product.find_or_create_by_name('Rice Krispies', calories: 80, saturated_fat: 0, sugar_type: 'Processed Sugar')
ProductSwap.find_or_create_by_product1_id_and_product2_id(product3.id, product4.id, reason: 'Calories')
