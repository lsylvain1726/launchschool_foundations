# exercise4.rb

# method takes a string
# returns a list of substrings
# returned list ordered by where in string substring begins
# that means all substrings that start at position 0 should come first
# then all sub strings at position 1

def substrings_at_start(string)
new_arr = []
0.upto(string.size - 1) do |index|
new_arr << string[0..index]
end
new_arr	
end

def substrings(str)
	results = []
	(0..str.size).each do |start_index|
		this_substring = str[start_index..-1]
		results.concat(substrings_at_start(this_substring))
	end
	results
end

p substrings('abcde')





