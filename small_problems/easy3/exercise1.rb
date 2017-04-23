#exercise1.rb

# ask the user for 6 different numbers
# print a message that describes if the 6th number
# appears among the other 5 numbers

puts 'Enter the first number'
first_number = gets.chomp.to_i

puts 'Enter the second number'
second_number = gets.chomp.to_i

puts 'Enter the third number'
third_number = gets.chomp.to_i

puts 'Enter the fourth number'
fourth_number = gets.chomp.to_i

puts 'Enter the fifth number'
fifth_number = gets.chomp.to_i

puts 'Enter the sixth number'
sixth_number = gets.chomp.to_i

arr = []
arr.push(first_number, second_number, third_number, fourth_number, fifth_number)

if arr.include?(sixth_number)
	puts "The number #{sixth_number} appears in #{arr}"
else
	puts "The number #{sixth_number} does not appear in #{arr}"
end






