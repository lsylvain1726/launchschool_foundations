# exercise8.rb

# method takes string of digits
# returns number as an integer
# the string may have leading + or - sign
# if string has a plus, the method should return positive number
# if string has a minus, it should return negative number
# no sign = positive number
# string will always maintain a valid number

HASH = { "0" => 0,
"1" => 1,
"2" => 2,
"3" => 3,
"4" => 4,
"5" => 5,
"6" => 6,
"7" => 7,
"8" => 8,
"9" => 9,
"10" => 10,
}


def string_to_integer(string)
arr = string.chars.map { |index| HASH[index] }
arr.inject{|a,i| a*10 + i}
end

def string_to_signed_integer(string)
	case string[0]
	when '-' then -string_to_integer(string[1..-1])
	when '+' then string_to_integer(string[1..-1])	
  else          string_to_integer(string)
  end	
end	

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100


def string_to_integer(string)
arr = string.chars.map { |index| HASH[index] }
arr.inject{|a,i| a*10 + i}
end

def string_to_signed_integer(string)
	  negative_string = string[0] == '-'
	  string_no_sign = string.delete('-+')
	  integer = string_to_integer(string_no_sign)
	  integer = -integer if negative_string
	  integer
end	

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100






