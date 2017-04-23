#exercise3.rb

# simple tip calculator
# ask the user for the bill amount
# ask the user how much they would like to tip (percentage)
# compute the tip
# display tip and total bill with tip included

#compute the tip
# convert integer to percentage (decimal, tip/100)
# bill amount times percentage

puts "How much is your bill?"
bill_amount = gets.to_f

puts "What percentage will you tip?"
tip_percentage = gets.to_f

tip = bill_amount * (tip_percentage/100)


puts "The tip is $#{sprintf('%.2f', tip)}"
puts "The total is $#{sprintf('%.2f', (bill_amount + tip))}"




