# exercise1.rb

# two arrays passed in as arguments
# returns new array that contains all elements of both arrays
# elements taken in alteration


def interleave(arr1, arr2)
	new_arr = []
	counter = 0
	loop do
		break if counter == arr1.size 
		new_arr << arr1[counter]
		new_arr << arr2[counter]
		counter += 1
	end	
	new_arr
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']


def interleave(arr1, arr2)
	new_arr = []
	arr1.each_with_index do |element, index|
		new_arr << element << arr2[index]
	end
	new_arr	
end	

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']


def interleave(arr1, arr2)
	arr1.zip(arr2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']






