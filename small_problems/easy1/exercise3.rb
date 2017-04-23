#exercise3.rb

# method takes positive integer as argument
# iterates through the number
# returns list of digits in the number
# each number is seperated by a comma

def digit_list(int)
	list = []
	int.to_s.split(//).each { |x| list << x.to_i }
	list
end


def digit_list(num)
	num.to_s.chars.map { |num| num.to_i }
end

puts digit_list(12345) == [1, 2, 3, 4, 5]
puts digit_list(7) == [7]
puts digit_list(375290) == [3, 7, 5, 2, 9, 0]
puts digit_list(444) == [4, 4, 4]


