# exercise5.rb

# method takes an array
# returns new array with elements in reverse order
# do no modify the method


def reverse(arr)
	new_arr = []
	arr.reverse_each { |element| new_arr << element }
	new_arr
end


p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b c d e)) == %w(e d c b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true



def reverse(arr)
	arr.inject([]) { |memo, word| memo.unshift(word) }
end


p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b c d e)) == %w(e d c b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                       # => true


