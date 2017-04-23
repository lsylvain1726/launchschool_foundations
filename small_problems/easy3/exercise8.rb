# exercise8.rb

# method passes in string as argument
# returns true if string is palindrome
# returns false if string is not palindrome
# case does matter
# all characters need to be considered

# a palindrome is a string that can be read the same
# backwards and forwards

def palindrome?(str)
	arr = []

	str.split.each do |word|
		arr << word.reverse
	end

	new_str = arr.join(' ')

	str == new_str ? true : false
end

puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true
puts palindrome?('madam i noon') == true


def palindrome?(str)
str == str.reverse
end	

puts palindrome?('madam i noon') == true

