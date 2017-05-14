# exercise4.rb

# takes an array as an argument
# reverses elements in place
# mutates the array passed in
# return value should be the same array object


def reverse!(array)
	left_index = 0
	right_index = -1

	while left_index < array.size / 2
		array[left_index], array[right_index] = array[right_index], array[left_index]
		left_index += 1
		right_index -= 1
	end	
	array
end

puts list = [1,2,3,4]