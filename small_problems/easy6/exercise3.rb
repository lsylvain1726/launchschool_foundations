# exercise3.rb

# fibonacci number
# first two numbers are 1 by definition
# each number after is the sum of previous two numbers
#(1, 1, 2, 3, 5, 8, 13, 21, ...)

# calculates and returns the index of the first Fibonacci number
# that has number of digits specified as an argumnet
# first Fibonacci number has index of 1

def find_fibonacci_index_by_length(number_digits)
	first = 1
	second = 1
	index = 2

	loop do
		index += 1
		fibonacci = first + second
		break if fibonacci.to_s.size >= number_digits

		first = second
		second = fibonacci
	end
	index
end	


p find_fibonacci_index_by_length(2) == 7
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847




