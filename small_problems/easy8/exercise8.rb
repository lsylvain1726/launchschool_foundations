# exercise8.rb

# method takes a string
# returns a new string in which every constant character is doubled
# Vowels(aeiou), digits, punctuation, and whitespace should not be doubled



def double_consonants(str)
new_str = ""

str.each_char do |char|
	if /[aeiou\W\d\s]/ =~ char 
		new_str << char
	else
		new_str << char << char
	end
end
new_str
end

p double_consonants('String') 
p double_consonants("Hello-World!") 
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""







