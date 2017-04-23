#exercise2.rb

# ask user for the length of room in meters
# as user for the  width of room in meters
# calculate area of room
# display in both square meters and square feet

# multiply length by width to calcuate area
# 1 square meter = 10.7639 square feet

SQFEET_CONVERSION = 10.7639

puts "Enter the length of the room in meters:"
length = gets.chomp.to_f

puts "Enter the width of the room in meters:"
width = gets.chomp.to_f 

area_meters = (length * width).round(2)
area_feet = (area_meters * SQFEET_CONVERSION).round(2)

puts "The area of the room is #{area_meters} square_meters (#{area_feet} square feet)"

SQINCHES_CONVERSION = 12
SQCENTIMETERS_CONVERSION = 30.48


puts "Enter the length of the room in feet:"
length = gets.chomp.to_f

puts "Enter the width of the room in feet:"
width = gets.chomp.to_f 

area_feet= (length * width).round(2)
area_inches = (area_feet * SQINCHES_CONVERSION).round(2)
area_centimeters= (area_feet * SQCENTIMETERS_CONVERSION).round(2)

puts "The area of the room is #{area_feet} square_feet (#{area_inches} square inches, #{area_centimeters} square centimeters )"

