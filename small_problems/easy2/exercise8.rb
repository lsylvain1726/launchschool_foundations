#exercise8.rb

# ask user to enter integer greater than 0
# ask the user if they want to determine the sum or product of all numbers between 1 and entered integer

puts 'Please enter an integer greater than 0:'
num = gets.chomp.to_i

puts "Enter 's' to compute the sum, 'p' to compute the product."
sum_or_product = gets.chomp

def compute_sum(num)
count = 0
sum = 0

loop do
	count += 1
	sum += count
	break if count == num
end
sum
end

def compute_product(num)
count = 0
product = 1

loop do
	count += 1
	product *= count
	break if count == num
end
product
end

if sum_or_product == "s"
sum = compute_sum(num)
puts "The sum of the integers between 1 and #{num} is #{sum}."
elsif sum_or_product == "p"
product = compute_product(num)
puts "The product of the integers between 1 and #{num} is #{product}."
end


###### another solution

puts 'Please enter an integer greater than 0:'
num = gets.chomp.to_i

puts "Enter 's' to compute the sum, 'p' to compute the product."
sum_or_product = gets.chomp

def compute_sum(num)
total = 0
(1..num).each { |num| total += num}
total
end

def compute_product(num)
total = 1
(1..num).each { |num| total *= num }
total
end

if sum_or_product == "s"
sum = compute_sum(num)
puts "The sum of the integers between 1 and #{num} is #{sum}."
elsif sum_or_product == "p"
product = compute_product(num)
puts "The product of the integers between 1 and #{num} is #{product}."
end


###### another solution

puts 'Please enter an integer greater than 0:'
num = gets.chomp.to_i

puts "Enter 's' to compute the sum, 'p' to compute the product."
sum_or_product = gets.chomp

def compute_sum(num)
(1..num).reduce(:+)
end

def compute_product(num)
(1..num).reduce(:*) 
end

if sum_or_product == "s"
sum = compute_sum(num)
puts "The sum of the integers between 1 and #{num} is #{sum}."
elsif sum_or_product == "p"
product = compute_product(num)
puts "The product of the integers between 1 and #{num} is #{product}."
end







