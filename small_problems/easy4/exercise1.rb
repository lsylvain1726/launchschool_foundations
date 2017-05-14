# exercise1.rb

# two strings as arguments
# determines longest of two strings
# returns result of putting together short string, long string, short string
# returns short string, long string, short string
# strings are of different lengths

def short_long_short(word1, word2)

	longest = word1.size <=> word2.size

	if longest == 1
		"#{word2}#{word1}#{word2}"
		elsif longest == -1
		"#{word1}#{word2}#{word1}"
	end	
end


puts short_long_short('abc', 'defgh') 
puts short_long_short('abcde', 'fgh') 
puts short_long_short('', 'xyz')

def short_long_short(word1, word2)
	if word1.length > word2.length
		"#{word2}#{word1}#{word2}"
	else
		"#{word1}#{word2}#{word1}"
	end	
end	

puts short_long_short('abc', 'defgh') 
puts short_long_short('abcde', 'fgh') 
puts short_long_short('', 'xyz')

