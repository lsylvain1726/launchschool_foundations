# exercise1.rb

# method takes an array
# rotates an array by moving the first element to end of the array
# original array should not be modified

def rotate_array(arr)
new_arr = []
arr.each do |num|
new_arr << num
end	
new_arr << new_arr.shift
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']


def rotate_array(array)
array[1..-1] + [array[0]]
end

def rotate_string(str)
array = str.split('')
rotate_array(array).join('')
end

rotate_string('hello')

def rotate_number(num)
array = num.to_s.split('')
rotate_array(array).join('').to_i
end

rotate_number(1234)










