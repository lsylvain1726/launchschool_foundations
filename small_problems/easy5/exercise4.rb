# exercise4.rb

# string of words seperated by spaces
# return string
# first and last letters of every word swapped
# every word contains at least one letter
# string will always contain at least one word
# all strings include nothing but words and spaces

# iterate through string
# first letter will be replaced with last letter
# last letter will become first letter

def swap_characters(str)
	str[0], str[-1] = str[-1], str[0]
	str
end

def swap(strings)
	result = strings.split.map do |word|
	swap_characters(word)
	end
	result.join(' ')	
end	


puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'

# no it would not work, the return value is an 
# array containing the values at those indexes


