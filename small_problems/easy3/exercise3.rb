# exercise3.rb

# ask user for a word or multiple words
# give back the number of characters in word
# spaces should not be counted

puts "Please write word or multiple words"
str = gets.chomp

str_length = str.gsub(/\s+/, "").length

puts "There are #{str_length} characters in '#{str}'"


puts "Please write word or multiple words"
str = gets.chomp

str_length = str.delete(' ').length
puts "There are #{str_length} characters in '#{str}'"

