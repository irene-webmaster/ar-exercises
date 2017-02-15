require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Irina", last_name: "Shakhova", hourly_rate: 100)
@store1.employees.create(first_name: "Slava", last_name: "Tkachenko", hourly_rate: 200)
@store2.employees.create(first_name: "Bob", last_name: "One", hourly_rate: 70)
@store2.employees.create(first_name: "Sarah", last_name: "Test", hourly_rate: 30)
@store2.employees.create(first_name: "Adam", last_name: "Saint", hourly_rate: 150)
@store1.employees.create(first_name: "Tom", last_name: "Two", hourly_rate: 75)
@store2.employees.create(first_name: nil, last_name: "Three", hourly_rate: 65)
# employees.create(first_name: "John", last_name: "Smith", hourly_rate: 110)
