#exercise1.rb

# method returns ASCII string value of a striing
# ASCII string value is sum of the ASCII values of every character
# string#ord to determine ASCII value of character

def ascii_value(str)
	total = 0
	str.each_char { |letter| total += letter.ord }
	total
end

puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0

# chr integer method returns string containing character 
# represented by integers value