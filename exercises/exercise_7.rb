require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
print "Please enter a store name "
store_name = gets.chomp.force_encoding('UTF-8')

invalid_store = Store.create(name: "#{store_name}", annual_revenue: nill, mens_apparel: false, womens_apparel: false)

puts invalid_store.errors.full_messages
