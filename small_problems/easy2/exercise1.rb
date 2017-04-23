#exercise1.rb

# program that randomly generates and prints Teddy's age
# generate a random number between 20 and 200

puts "What is your name?"
name = gets.chomp
name = "Teddy" if name == ""

puts "#{name} is #{rand(20..200)} years old!"