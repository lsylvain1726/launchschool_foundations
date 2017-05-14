#exercise10.rb

# takes an integer and converts it to string
# negative numbers are allowed

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10']


def signed_integer_to_string(number)
	result = ''
	num = number.abs
	loop do
		num, remainder = num.divmod(10)
		result.prepend(DIGITS[remainder])
		break if num == 0
	end
	if number < 0
		"-" + result
	elsif number > 0
	    "+" + result
	else
	     result    	
	end	
end	

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'





