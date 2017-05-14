# exercise8.rb

# method takes two array arguments
# each array contains a list of numbers
# returns new array that contains the product of each pair of numbers for same index
# both arrays contain same number of elements



def multiply_list(arr1, arr2)
	index = 0
	new_arr = []

	loop do
		result = arr1[index] * arr2[index]
		new_arr << result
		index += 1
		break if index == arr1.size
	end

new_arr
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]


def multiply_list(arr1, arr2)
	new_arr = []
	arr1.each_with_index do |item, index|
		new_arr << item * arr2[index]
	end
	new_arr
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]


def multiply_list(arr1, arr2)
	arr1.zip(arr2).map { |num1, num2| num1 * num2 }
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]






