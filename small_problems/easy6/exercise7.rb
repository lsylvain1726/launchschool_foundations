# exercise7.rb

# takes array as an argument
# returns two arrays that contain first half and second half of original array
# if odd number of elements, middle element should be placed in first half of array

array = [1, 2, 3, 4, 5]

def halvsies(array)
	first_half = array.slice(0, (array.size / 2.0 ).ceil)
	second_half = array.slice(first_half.size, array.size - first_half.size)
	[first_half, second_half]
end


p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]

# ceil returns the smallest integer great than or equal to float
# For example, if we have an array whose size is 5
# if we just use 2, 5/2 will be rounded to 2 and ceil will return 2
# if we use 2.0, 5 / 2.0 is 2.5. ceil on 2.5 will return 3






