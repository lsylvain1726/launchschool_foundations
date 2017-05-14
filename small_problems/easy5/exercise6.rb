# exercise6.rb

# method takes a string with one or more space seperated words
# returns hash, showing number of words of different sizes
# any string of characters that do not include a space

def word_sizes(str)

	counts = Hash.new(0)

	str.split.each do |word|
	counts[word.size] += 1
	end	
	counts
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
puts word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
puts word_sizes('') == {}

