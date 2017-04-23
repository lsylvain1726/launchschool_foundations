# exercise7.rb

# method returns an array
# returned array contains every other element of array
# values returned should be those values at at 1, 3, 5th elements


def oddities(arr)
	arr.select.with_index { |num, index| num if index.even? }
end	

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []

def oddities(array)
	index = 0
	arr = []
	loop do
		break if index >= array.size
		arr << array[index]
		index += 2
	end
	arr
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []


def even_elements(array)
	array.select.with_index { |num, index| num if index.odd? }
end	

puts even_elements([2, 3, 4, 5, 6]) == [3, 5]
puts even_elements(['abc', 'def']) == ['def']
puts even_elements([123]) == []
puts even_elements([]) == []


