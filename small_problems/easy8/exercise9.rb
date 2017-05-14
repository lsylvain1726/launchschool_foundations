# exercise9.rb

# method takes positive integer
# returns number with its digits reversed


def reversed_number(num)
	num.to_s.reverse.to_i
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # Note that zeros get dropped!
p reversed_number(1) == 1

def reverse_number(number)
	str = number.to_s
	digits = str.chars
	reversed_digits = digits.reverse
	reversed_string = reversed_digits.join('')
	reversed_string.to_i
end	

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # Note that zeros get dropped!
p reversed_number(1) == 1






