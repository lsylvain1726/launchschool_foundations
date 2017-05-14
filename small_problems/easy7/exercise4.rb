# exercise4.rb

# method takes a string
# returns new string with every uppercase letter replaced by lowercase version
# every lowercase letter replaced with uppercase version
# all other characters should be unchanged


def swapcase(str)
characters = str.chars.map do |char|
	if char =~ /[a-z]/
		char.upcase
	elsif char =~ /[A-Z]/
		char.downcase
	else
		char
	end
end
characters.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'			
