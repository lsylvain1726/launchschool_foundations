# exercise6.rb

# method takes two arrays
# returns an array that contains all values from both arrays
# no duplicate values in returned array

def merge(arr1, arr2)
	combined_arr = [arr1, arr2]
	combined_arr.flatten.uniq
end

p merge([1, 3, 5], [3, 6, 9])


def merge(arr1, arr2)
	arr1 | arr2
end

p merge([1, 3, 5], [3, 6, 9])  

