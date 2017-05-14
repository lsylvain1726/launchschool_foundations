# exercise5.rb

# string of words and non alphabet characters
# returns string with non alphabet characters replaced by spaces
# only one space if non-alphabetic characters occur in a row
# result should never have consecutive spaces


def cleanup(str)
	new_str = str.gsub(/[^a-z]/i, ' ').split.join(' ')
	" #{new_str} "
end

puts cleanup("---what's my +*& line?") == ' what s my line '


def cleanup(str)
	str.gsub(/[^a-z]/i, ' ').squeeze(' ')
end

puts cleanup("---what's my +*& line?")


def cleanup(string)
  string.gsub(/[^a-zA-Z]+/,' ')
end

puts cleanup("---what's my +*& line?")


ALPHABET = ('A'..'Z').to_a + ('a'..'z').to_a


def cleanup(str)
	result = str.chars.map { |char| ALPHABET.include?(char) ? char : ' '}
	result.join.squeeze(' ')
end

puts cleanup("---what's my +*& line?")

