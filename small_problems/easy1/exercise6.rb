#exercise6.rb

# a string containing one or more words
# if word has 5 or more letters it should be reversed
# return a string with letters and spaces only

def reverse_words(str)
	arr = []

	str.split.map do |word| 
	word.reverse if word.size >= 5
	arr << word
	end

	arr.join(' ')
end	


puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School') 


def reverse_words(str)
new_str = str.split.map do |word| 
	if word.size >= 5
		word.reverse
	else
		word
	end
end       

new_str.join(' ')
end


puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School') 
