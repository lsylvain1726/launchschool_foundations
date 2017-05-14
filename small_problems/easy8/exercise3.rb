# exercise3.rb

# method takes a string
# returns lists of all substrings
# substrings start at beginning of the original string
# return value arranged in order from shortest to longest



def substrings_at_start(string)
new_arr = []
0.upto(string.size - 1) do |index|
	new_arr << string[0..index]
end
new_arr	
end


p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']



